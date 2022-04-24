use proconio::input;

fn main() {
   // input
   input! {
      n: usize,
      x: [i32; n],
   }
   // solve
   let mut ans = 0;
   let mut sum = 0;
   for i in x.iter() {
      ans += i * i;
      sum += i;
   }
   // answer
   println!("{}", ans);
}
