import InitECandidate.Solver.Spec.Fq12.SL

/-!
# The body of `fq_mul`

`fq_mul(a, b)` is the 32-bit-digit product-scanning Montgomery multiplication modulo the
BN254 base-field prime: 16 limb declarations, 23 zero-initialised locals, 15 column blocks
(`fqMulBlk k`), the packing of the result and a final conditional subtraction. Each column
block is a list of multiply-accumulate triples (`macList`) followed by a column end
(`colEndM` for the reduction columns `0..7`, `colEndU` for the output columns `8..14`).
`entry_fq_mul` certifies the rendering against the literal guest AST (`cbv`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def M32 : ExpHOL 64 := cw 4294967295

/-- `pr = x * y; L = L + (pr & M); H = H + (pr >>> 32)` -/
def macAsg (x y : ExpHOL 64) : List Asg :=
  [(nm "pr", .panop .mul [x, y]),
   (nm "L", .op .add [lv (nm "L"), .op .and [lv (nm "pr"), M32]]),
   (nm "H", .op .add [lv (nm "H"), .shift .lsr (lv (nm "pr")) (cw 32)])]

def macList : List (ExpHOL 64 × ExpHOL 64) → List Asg
  | [] => []
  | (x, y) :: ps => macAsg x y ++ macList ps

/-- End of a reduction column: the Montgomery digit `m` and the carry. -/
def colEndM (m : MlS) : List Asg :=
  [(nm "col", .op .add [lv (nm "L"), lv (nm "c")]),
   (nm "dg", .op .and [lv (nm "col"), M32]),
   (m, .op .and [.panop .mul [lv (nm "dg"), cw 3834012553], M32]),
   (nm "pr", .panop .mul [lv m, cw 3632069959]),
   (nm "col2", .op .add [lv (nm "dg"), .op .and [lv (nm "pr"), M32]]),
   (nm "c", .op .add [.shift .lsr (lv (nm "col")) (cw 32), lv (nm "H"),
      .shift .lsr (lv (nm "col2")) (cw 32), .shift .lsr (lv (nm "pr")) (cw 32)]),
   (nm "L", cw 0),
   (nm "H", cw 0)]

/-- End of an output column: the output digit `u` and the carry. -/
def colEndU (u : MlS) : List Asg :=
  [(nm "col", .op .add [lv (nm "L"), lv (nm "c")]),
   (u, .op .and [lv (nm "col"), M32]),
   (nm "c", .op .add [.shift .lsr (lv (nm "col")) (cw 32), lv (nm "H")]),
   (nm "L", cw 0),
   (nm "H", cw 0)]

def fqMulPairs0 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a0"), lv (nm "b0"))]

def fqMulBlk0 : List Asg := macList fqMulPairs0 ++ colEndM (nm "m0")

def fqMulPairs1 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a0"), lv (nm "b1")),
   (lv (nm "a1"), lv (nm "b0")),
   (lv (nm "m0"), cw 1008765974)]

def fqMulBlk1 : List Asg := macList fqMulPairs1 ++ colEndM (nm "m1")

def fqMulPairs2 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a0"), lv (nm "b2")),
   (lv (nm "a1"), lv (nm "b1")),
   (lv (nm "a2"), lv (nm "b0")),
   (lv (nm "m0"), cw 1752287885),
   (lv (nm "m1"), cw 1008765974)]

def fqMulBlk2 : List Asg := macList fqMulPairs2 ++ colEndM (nm "m2")

def fqMulPairs3 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a0"), lv (nm "b3")),
   (lv (nm "a1"), lv (nm "b2")),
   (lv (nm "a2"), lv (nm "b1")),
   (lv (nm "a3"), lv (nm "b0")),
   (lv (nm "m0"), cw 2541841041),
   (lv (nm "m1"), cw 1752287885),
   (lv (nm "m2"), cw 1008765974)]

def fqMulBlk3 : List Asg := macList fqMulPairs3 ++ colEndM (nm "m3")

def fqMulPairs4 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a0"), lv (nm "b4")),
   (lv (nm "a1"), lv (nm "b3")),
   (lv (nm "a2"), lv (nm "b2")),
   (lv (nm "a3"), lv (nm "b1")),
   (lv (nm "a4"), lv (nm "b0")),
   (lv (nm "m0"), cw 2172737629),
   (lv (nm "m1"), cw 2541841041),
   (lv (nm "m2"), cw 1752287885),
   (lv (nm "m3"), cw 1008765974)]

def fqMulBlk4 : List Asg := macList fqMulPairs4 ++ colEndM (nm "m4")

def fqMulPairs5 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a0"), lv (nm "b5")),
   (lv (nm "a1"), lv (nm "b4")),
   (lv (nm "a2"), lv (nm "b3")),
   (lv (nm "a3"), lv (nm "b2")),
   (lv (nm "a4"), lv (nm "b1")),
   (lv (nm "a5"), lv (nm "b0")),
   (lv (nm "m0"), cw 3092268470),
   (lv (nm "m1"), cw 2172737629),
   (lv (nm "m2"), cw 2541841041),
   (lv (nm "m3"), cw 1752287885),
   (lv (nm "m4"), cw 1008765974)]

def fqMulBlk5 : List Asg := macList fqMulPairs5 ++ colEndM (nm "m5")

def fqMulPairs6 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a0"), lv (nm "b6")),
   (lv (nm "a1"), lv (nm "b5")),
   (lv (nm "a2"), lv (nm "b4")),
   (lv (nm "a3"), lv (nm "b3")),
   (lv (nm "a4"), lv (nm "b2")),
   (lv (nm "a5"), lv (nm "b1")),
   (lv (nm "a6"), lv (nm "b0")),
   (lv (nm "m0"), cw 3778125865),
   (lv (nm "m1"), cw 3092268470),
   (lv (nm "m2"), cw 2172737629),
   (lv (nm "m3"), cw 2541841041),
   (lv (nm "m4"), cw 1752287885),
   (lv (nm "m5"), cw 1008765974)]

def fqMulBlk6 : List Asg := macList fqMulPairs6 ++ colEndM (nm "m6")

def fqMulPairs7 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a0"), lv (nm "b7")),
   (lv (nm "a1"), lv (nm "b6")),
   (lv (nm "a2"), lv (nm "b5")),
   (lv (nm "a3"), lv (nm "b4")),
   (lv (nm "a4"), lv (nm "b3")),
   (lv (nm "a5"), lv (nm "b2")),
   (lv (nm "a6"), lv (nm "b1")),
   (lv (nm "a7"), lv (nm "b0")),
   (lv (nm "m0"), cw 811880050),
   (lv (nm "m1"), cw 3778125865),
   (lv (nm "m2"), cw 3092268470),
   (lv (nm "m3"), cw 2172737629),
   (lv (nm "m4"), cw 2541841041),
   (lv (nm "m5"), cw 1752287885),
   (lv (nm "m6"), cw 1008765974)]

def fqMulBlk7 : List Asg := macList fqMulPairs7 ++ colEndM (nm "m7")

def fqMulPairs8 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a1"), lv (nm "b7")),
   (lv (nm "a2"), lv (nm "b6")),
   (lv (nm "a3"), lv (nm "b5")),
   (lv (nm "a4"), lv (nm "b4")),
   (lv (nm "a5"), lv (nm "b3")),
   (lv (nm "a6"), lv (nm "b2")),
   (lv (nm "a7"), lv (nm "b1")),
   (lv (nm "m1"), cw 811880050),
   (lv (nm "m2"), cw 3778125865),
   (lv (nm "m3"), cw 3092268470),
   (lv (nm "m4"), cw 2172737629),
   (lv (nm "m5"), cw 2541841041),
   (lv (nm "m6"), cw 1752287885),
   (lv (nm "m7"), cw 1008765974)]

def fqMulBlk8 : List Asg := macList fqMulPairs8 ++ colEndU (nm "u0")

def fqMulPairs9 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a2"), lv (nm "b7")),
   (lv (nm "a3"), lv (nm "b6")),
   (lv (nm "a4"), lv (nm "b5")),
   (lv (nm "a5"), lv (nm "b4")),
   (lv (nm "a6"), lv (nm "b3")),
   (lv (nm "a7"), lv (nm "b2")),
   (lv (nm "m2"), cw 811880050),
   (lv (nm "m3"), cw 3778125865),
   (lv (nm "m4"), cw 3092268470),
   (lv (nm "m5"), cw 2172737629),
   (lv (nm "m6"), cw 2541841041),
   (lv (nm "m7"), cw 1752287885)]

def fqMulBlk9 : List Asg := macList fqMulPairs9 ++ colEndU (nm "u1")

def fqMulPairs10 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a3"), lv (nm "b7")),
   (lv (nm "a4"), lv (nm "b6")),
   (lv (nm "a5"), lv (nm "b5")),
   (lv (nm "a6"), lv (nm "b4")),
   (lv (nm "a7"), lv (nm "b3")),
   (lv (nm "m3"), cw 811880050),
   (lv (nm "m4"), cw 3778125865),
   (lv (nm "m5"), cw 3092268470),
   (lv (nm "m6"), cw 2172737629),
   (lv (nm "m7"), cw 2541841041)]

def fqMulBlk10 : List Asg := macList fqMulPairs10 ++ colEndU (nm "u2")

def fqMulPairs11 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a4"), lv (nm "b7")),
   (lv (nm "a5"), lv (nm "b6")),
   (lv (nm "a6"), lv (nm "b5")),
   (lv (nm "a7"), lv (nm "b4")),
   (lv (nm "m4"), cw 811880050),
   (lv (nm "m5"), cw 3778125865),
   (lv (nm "m6"), cw 3092268470),
   (lv (nm "m7"), cw 2172737629)]

def fqMulBlk11 : List Asg := macList fqMulPairs11 ++ colEndU (nm "u3")

def fqMulPairs12 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a5"), lv (nm "b7")),
   (lv (nm "a6"), lv (nm "b6")),
   (lv (nm "a7"), lv (nm "b5")),
   (lv (nm "m5"), cw 811880050),
   (lv (nm "m6"), cw 3778125865),
   (lv (nm "m7"), cw 3092268470)]

def fqMulBlk12 : List Asg := macList fqMulPairs12 ++ colEndU (nm "u4")

def fqMulPairs13 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a6"), lv (nm "b7")),
   (lv (nm "a7"), lv (nm "b6")),
   (lv (nm "m6"), cw 811880050),
   (lv (nm "m7"), cw 3778125865)]

def fqMulBlk13 : List Asg := macList fqMulPairs13 ++ colEndU (nm "u5")

def fqMulPairs14 : List (ExpHOL 64 × ExpHOL 64) :=
  [(lv (nm "a7"), lv (nm "b7")),
   (lv (nm "m7"), cw 811880050)]

def fqMulBlk14 : List Asg := macList fqMulPairs14 ++ colEndU (nm "u6")

def fqMulChain : List Asg :=
  fqMulBlk0 ++ fqMulBlk1 ++ fqMulBlk2 ++ fqMulBlk3 ++ fqMulBlk4 ++ fqMulBlk5 ++ fqMulBlk6 ++ fqMulBlk7 ++ fqMulBlk8 ++ fqMulBlk9 ++ fqMulBlk10 ++ fqMulBlk11 ++ fqMulBlk12 ++ fqMulBlk13 ++ fqMulBlk14

def fqMulDecs : List Asg :=
  [(nm "a0", .op .and [.rfield 0 (lv (nm "a")), M32]),
   (nm "a1", .shift .lsr (.rfield 0 (lv (nm "a"))) (cw 32)),
   (nm "a2", .op .and [.rfield 1 (lv (nm "a")), M32]),
   (nm "a3", .shift .lsr (.rfield 1 (lv (nm "a"))) (cw 32)),
   (nm "a4", .op .and [.rfield 2 (lv (nm "a")), M32]),
   (nm "a5", .shift .lsr (.rfield 2 (lv (nm "a"))) (cw 32)),
   (nm "a6", .op .and [.rfield 3 (lv (nm "a")), M32]),
   (nm "a7", .shift .lsr (.rfield 3 (lv (nm "a"))) (cw 32)),
   (nm "b0", .op .and [.rfield 0 (lv (nm "b")), M32]),
   (nm "b1", .shift .lsr (.rfield 0 (lv (nm "b"))) (cw 32)),
   (nm "b2", .op .and [.rfield 1 (lv (nm "b")), M32]),
   (nm "b3", .shift .lsr (.rfield 1 (lv (nm "b"))) (cw 32)),
   (nm "b4", .op .and [.rfield 2 (lv (nm "b")), M32]),
   (nm "b5", .shift .lsr (.rfield 2 (lv (nm "b"))) (cw 32)),
   (nm "b6", .op .and [.rfield 3 (lv (nm "b")), M32]),
   (nm "b7", .shift .lsr (.rfield 3 (lv (nm "b"))) (cw 32)),
   (nm "pr", cw 0),
   (nm "L", cw 0),
   (nm "H", cw 0),
   (nm "c", cw 0),
   (nm "col", cw 0),
   (nm "col2", cw 0),
   (nm "dg", cw 0),
   (nm "m0", cw 0),
   (nm "m1", cw 0),
   (nm "m2", cw 0),
   (nm "m3", cw 0),
   (nm "m4", cw 0),
   (nm "m5", cw 0),
   (nm "m6", cw 0),
   (nm "m7", cw 0),
   (nm "u0", cw 0),
   (nm "u1", cw 0),
   (nm "u2", cw 0),
   (nm "u3", cw 0),
   (nm "u4", cw 0),
   (nm "u5", cw 0),
   (nm "u6", cw 0)]

/-- The BN254 base-field prime as a 4-limb struct expression. -/
def fqPE : ExpHOL 64 :=
  .rstruct [cw 4332616871279656263, cw 10917124144477883021, cw 13281191951274694749,
    cw 3486998266802970665]

/-- `<u0 | (u1 << 32), u2 | (u3 << 32), u4 | (u5 << 32), u6 | (c << 32)>` -/
def fqMulPack : ExpHOL 64 :=
  .rstruct [.op .or [lv (nm "u0"), .shift .lsl (lv (nm "u1")) (cw 32)],
    .op .or [lv (nm "u2"), .shift .lsl (lv (nm "u3")) (cw 32)],
    .op .or [lv (nm "u4"), .shift .lsl (lv (nm "u5")) (cw 32)],
    .op .or [lv (nm "u6"), .shift .lsl (lv (nm "c")) (cw 32)]]

/-- `var r = pack; var lt = u256_lt(r, P); if lt == 0 { return u256_sub(r, P) } return r` -/
def fqMulTail : ProgHOL 64 :=
  .dec (nm "r") (shK 4) fqMulPack
    (.decCall (nm "lt") .one (nm "u256_lt") [lv (nm "r"), fqPE]
      (.seq (.ite (.cmp .equal (lv (nm "lt")) (cw 0))
          (.call none (nm "u256_sub") [lv (nm "r"), fqPE]) .skip)
        (.return (lv (nm "r")))))

def fqMulBody : ProgHOL 64 := mkDecs fqMulDecs (mkChain fqMulChain fqMulTail)

theorem entry_fq_mul : fnEntry Guest.Software.guestFn_fq_mul =
    (nm "fq_mul", params2 4, fqMulBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_fq_mul : guestCode (nm "fq_mul") = some (params2 4, fqMulBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 652) (by decide)) ⟨_, rfl⟩
    entry_fq_mul

end InitECandidate.Solver.Spec.Fq12
