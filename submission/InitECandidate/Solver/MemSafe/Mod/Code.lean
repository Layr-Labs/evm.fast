import InitECandidate.Solver.MemSafe.Pre.EmitCode

set_option autoImplicit false

/-!
# `modexp` and `pre_modexp`: the code

```
fun 1 modexp(1 bp, 1 blen, 1 ep, 1 elen, 1 mp, 1 mlen, 1 out) {
  var 1 mark = heap_mark();
  var 1 nmd = (mlen + 3) >>> 2;  var 1 md = alloc(nmd * 8 + 8);
  bn_from_be(mp, mlen, md);
  var 1 n = digits_len(md, nmd);
  if n == 0 { memzero(out, mlen); heap_release(mark); return 0; }
  var 1 nbd = (blen + 3) >>> 2;  var 1 big = max(nbd, 2 * n);
  var 1 bd = alloc(big * 8 + 8);  var 1 base = alloc(n * 8);  var 1 r = alloc(n * 8);
  var 1 prod = alloc(2 * n * 8);  var 1 q = alloc(big * 8 + 8);  var 1 un = alloc(big * 8 + 16);
  var 1 vn = alloc(n * 8);
  bn_from_be(bp, blen, bd);  bn_mod(bd, nbd, md, n, base, q, un, vn);
  var 1 t = be_top_bit(ep, elen);
  if t < 0 { memzero(r, n * 8); if (n == 1) && ((lds 1 md) == 1) { skip } else { st r, 1 } }
  else { memcpy(r, base, n * 8);
    while t > 0 { t = t - 1;
      bn_mul(r, n, r, n, prod);  bn_mod(prod, 2 * n, md, n, r, q, un, vn);
      if (((ld8 (ep + elen - 1 - (t >>> 3))) >>> (t & 7)) & 1) == 1 {
        bn_mul(r, n, base, n, prod);  bn_mod(prod, 2 * n, md, n, r, q, un, vn); } } }
  bn_to_be(r, n, out, mlen);  heap_release(mark);  return 0; }
```
`guestAst[630]`; `pre_modexp` is `guestAst[829]`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Mod
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def mxPs : List (MlS × ShapeHOL) :=
  [(nm "bp", .one), (nm "blen", .one), (nm "ep", .one), (nm "elen", .one), (nm "mp", .one),
   (nm "mlen", .one), (nm "out", .one)]

/-- `bn_mod(u, m, md, n, r, q, un, vn)`. -/
def mxMod (u m : ExpHOL 64) (r : String) : ProgHOL 64 :=
  callD (nm "bn_mod") [u, m, lv (nm "md"), lv (nm "n"), lv (nm r), lv (nm "q"), lv (nm "un"),
    lv (nm "vn")]

def mx2n : ExpHOL 64 := .panop .mul [cw 2, lv (nm "n")]
def mxN8 : ExpHOL 64 := .panop .mul [lv (nm "n"), cw 8]
def mxBig8 (c : Nat) : ExpHOL 64 := .op .add [.panop .mul [lv (nm "big"), cw 8], cw c]

/-- The loop body. -/
def mxIter : ProgHOL 64 :=
  .seq (.assign .local (nm "t") (.op .sub [lv (nm "t"), cw 1]))
    (.seq (callD (nm "bn_mul") [lv (nm "r"), lv (nm "n"), lv (nm "r"), lv (nm "n"), lv (nm "prod")])
      (.seq (mxMod (lv (nm "prod")) mx2n "r")
        (.ite (.cmp .equal (.op .and [.shift .lsr (.loadByte (.op .sub [.op .sub [.op .add
            [lv (nm "ep"), lv (nm "elen")], cw 1], .shift .lsr (lv (nm "t")) (cw 3)]))
            (.op .and [lv (nm "t"), cw 7]), cw 1]) (cw 1))
          (.seq (callD (nm "bn_mul")
              [lv (nm "r"), lv (nm "n"), lv (nm "base"), lv (nm "n"), lv (nm "prod")])
            (mxMod (lv (nm "prod")) mx2n "r"))
          .skip)))

def mxLoop : ProgHOL 64 := .while (.cmp .less (cw 0) (lv (nm "t"))) mxIter

/-- The two cases of the exponent. -/
def mxCase : ProgHOL 64 :=
  .ite (.cmp .less (lv (nm "t")) (cw 0))
    (.seq (callD (nm "memzero") [lv (nm "r"), mxN8])
      (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .equal (lv (nm "n")) (cw 1)),
          .cmp .notEqual (cw 0) (.cmp .equal (.load .one (lv (nm "md"))) (cw 1))])
        .skip (.store (lv (nm "r")) (cw 1))))
    (.seq (callD (nm "memcpy") [lv (nm "r"), lv (nm "base"), mxN8]) mxLoop)

def mxEnd : ProgHOL 64 :=
  .seq (callD (nm "bn_to_be") [lv (nm "r"), lv (nm "n"), lv (nm "out"), lv (nm "mlen")])
    (.seq (callD (nm "heap_release") [lv (nm "mark")]) (.return (cw 0)))

/-- After `be_top_bit`. -/
def mxT : ProgHOL 64 := .seq mxCase mxEnd

/-- After the allocations of the working buffers. -/
def mxW : ProgHOL 64 :=
  .seq (callD (nm "bn_from_be") [lv (nm "bp"), lv (nm "blen"), lv (nm "bd")])
    (.seq (mxMod (lv (nm "bd")) (lv (nm "nbd")) "base")
      (.decCall (nm "t") .one (nm "be_top_bit") [lv (nm "ep"), lv (nm "elen")] mxT))

def mxAllocs : ProgHOL 64 :=
  .decCall (nm "bd") .one (nm "alloc") [mxBig8 8]
    (.decCall (nm "base") .one (nm "alloc") [mxN8]
      (.decCall (nm "r") .one (nm "alloc") [mxN8]
        (.decCall (nm "prod") .one (nm "alloc") [.panop .mul [mx2n, cw 8]]
          (.decCall (nm "q") .one (nm "alloc") [mxBig8 8]
            (.decCall (nm "un") .one (nm "alloc") [mxBig8 16]
              (.decCall (nm "vn") .one (nm "alloc") [mxN8] mxW))))))

/-- After `n = digits_len(md, nmd)`. -/
def mxN : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "n")) (cw 0))
      (.seq (callD (nm "memzero") [lv (nm "out"), lv (nm "mlen")])
        (.seq (callD (nm "heap_release") [lv (nm "mark")]) (.return (cw 0))))
      .skip)
    (.dec (nm "nbd") .one (.shift .lsr (.op .add [lv (nm "blen"), cw 3]) (cw 2))
      (.decCall (nm "big") .one (nm "max") [lv (nm "nbd"), mx2n] mxAllocs))

def mxBody : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
    (.dec (nm "nmd") .one (.shift .lsr (.op .add [lv (nm "mlen"), cw 3]) (cw 2))
      (.decCall (nm "md") .one (nm "alloc") [.op .add [.panop .mul [lv (nm "nmd"), cw 8], cw 8]]
        (.seq (callD (nm "bn_from_be") [lv (nm "mp"), lv (nm "mlen"), lv (nm "md")])
          (.decCall (nm "n") .one (nm "digits_len") [lv (nm "md"), lv (nm "nmd")] mxN))))

theorem entry_modexp : fnEntry Guest.Software.guestFn_modexp =
    (nm "modexp", mxPs, mxBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_modexp : guestCode (nm "modexp") = some (mxPs, mxBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 630) (by decide)) ⟨_, rfl⟩
    entry_modexp

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.code_modexp
