use proconio::input;

fn main() {
   // input
   input! {
      n: usize,
      x: [i32; n],
   }
   // solve
   let mut tmp1 = 0;
   let mut tmp2 = 0;
   for i in x.iter() {
      tmp1 += *i * *i;
      tmp2 += *i;
   }
   let mut ans = std::i32::MAX;
   // answer
   println!("{}", ans);
}
