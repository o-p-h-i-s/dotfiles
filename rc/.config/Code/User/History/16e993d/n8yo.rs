use proconio::input;

fn main() {
   // input
   input! {
      a: i32,
      mut b: i32,
   }
   // solve
   let mut ans = 1;
   b -= a;
   ans += (b + a - 2) / (a - 1);
   println!("{}", ans);
}
