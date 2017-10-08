use v6;

my @alphabet = <A B C D E F G H I J K L M N O P Q R S T U V W X Y Z>;
my Int $letter-amount;
loop {
    try {
        $letter-amount = prompt('Number of letters to generate? ').Int;
        
        say "The number of letters to generate must be positive" if $letter-amount <= 0;
        last if $letter-amount > 0;

        CATCH {
            default {
                say "The number of letters to generate needs to be an Int";
            }
        }
    }
}
my $result = '';

for (1..$letter-amount) {
    $result ~= @alphabet.roll ~ ' ';
}

say $result;
