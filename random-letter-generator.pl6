use v6;

my @alphabet = <A B C D E F G H I J K L M N O P Q R S T U V W X Y Z>;
my $letter-amount = prompt('Number of letters to generate? ');
my $result = '';

for (1..$letter-amount) {
    $result ~= @alphabet.roll ~ ' ';
}

say $result;
