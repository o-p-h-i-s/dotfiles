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
      tmp1 += i * i;
      tmp2 += i;
   }
   let min = x.iter().min().unwrap();
   let max = x.iter().max().unwrap();
   let mut ans = std::i32::MAX;
   for p in *min..*max {
      ans = std::cmp::min(ans, tmp1 + p * p * n as i32 - 2 * tmp2 * p);
   }
   // answer
   println!("{}", ans);
}
