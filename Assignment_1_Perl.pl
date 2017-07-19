use strict;
use warnings;

my $myfile = "data.csv";
open (my $fh, '<', $myfile) or die "Can't open $myfile: $!";

my @row;
my @countries;
my $count;
#@dd is for keeping track of repetitions of people per country
my @dd;

#this loop to getlines and then populate the countries array with the countries
while(my $line = <$fh>)
{
	@row = split(",", $line);
	push(@countries, $row[-1]);
}

#subroutine for getting unique values
sub unique
{
    my %seen;
    grep !$seen{$_}++, @_;
}

$count = @countries;

#getting rid or leading & ending whitespace
for(my $i = 0; $i<$count; $i++)
{
	$countries[$i] =~ s/^\s*(.*?)\s*$/$1/;
}

@countries = unique(@countries);
@countries = sort @countries;

#delete the entry "country"
my $delete = 5;
splice(@countries, $delete, 1);

$count = @countries;

#PART 1
for(my $i = 0; $i<$count; $i++)
{
	print("$countries[$i]:\n");

	$myfile = "data.csv";
	open ($fh, '<', $myfile) or die "Can't open $myfile: $!";

	while(my $line = <$fh>)
		{
			@row = split(",", $line);
			my $temp = $row[-1];
			$temp =~ s/^\s*(.*?)\s*$/$1/;
			if($temp eq $countries[$i])
			{
				$dd[$i] +=1;
				print("@row\n");
			}
		}
}


#PART 2
for(my $i = 0; $i<$count; $i++)
{
	print("$countries[$i], $dd[$i]\n");
}

print("\n");

$myfile = "data.csv";
open ($fh, '<', $myfile) or die "Can't open $myfile: $!";

#PART 3
while(my $line = <$fh>)
	{
		@row = split(",", $line);
		my $temp = $row[0];
		$temp =~ s/^\s*(.*?)\s*$/$1/;
		#checking for leading 'H'
		if($temp =~ /^[H]/)
		{
			print("@row\n");
		}
	}
