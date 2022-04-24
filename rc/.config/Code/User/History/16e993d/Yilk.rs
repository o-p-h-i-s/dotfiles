use proconio::input;

fn main() {
   // input
   input! {
      a: i32,
      mut b: i32,
   }
   // solve
   b -= a;
   let mut ans = 1;
   // answer
   println!("{}", ans);
}
