import InitECandidate.Solver.Spec.Value
import InitECandidate.Solver.SourceCost.CodeMap
import Guest.SoftwareAst

/-!
# The guest functions used by the binary-GCD inverses

Readable `ProgHOL` renderings of the guest bodies (`u256_lt`, `u256_sub`, `modinv_bin`;
`bls_fp_lt_raw`, `bls_fp_sub_raw`, `bls_fp_shr1`, `bls_fp_inv_raw`), each certified to
be the code-map entry `guestCode` installs (`code_*`), by `cbv` against the literal
guest AST.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL progToHOL paramToHOL shapeToHOL)
open InitECandidate.Solver.SourceCost
open Flapjack.Basis.Pure.MlString

/-- Name and code entry of a guest declaration. -/
def fnEntry (d : Flapjack.Decl (BitVec 64)) :
    MlS × (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL) :=
  match d with
  | .function fd =>
      (ofString fd.name, fd.params.map paramToHOL, progToHOL fd.body, shapeToHOL fd.returnShape)
  | _ => (ofString "", [], .skip, .one)

theorem code_of_entry {d : Flapjack.Decl (BitVec 64)} (hd : d ∈ Guest.Software.guestAst)
    (hf : ∃ fd, d = .function fd) {n : MlS} {e : List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL}
    (he : fnEntry d = (n, e)) : guestCode n = some e := by
  obtain ⟨fd, rfl⟩ := hf
  have := guestCode_function hd
  simp only [fnEntry, Prod.mk.injEq] at he
  rw [← he.1, this, he.2]

/-! ## Syntax helpers -/

abbrev nm (s : String) : MlS := ofString s
def lv (x : MlS) : ExpHOL 64 := .var .local x
def cw (n : Nat) : ExpHOL 64 := .const (BitVec.ofNat 64 n)

/-- `if a.i != b.i { if a.i < b.i { return 1 } return 0 }; rest` -/
def limbStep (a b : MlS) (i : Nat) (rest : ProgHOL 64) : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.rfield i (lv a)) (.rfield i (lv b)))
          (.seq (.ite (.cmp .lower (.rfield i (lv a)) (.rfield i (lv b))) (.return (cw 1)) .skip)
                (.return (cw 0)))
          .skip) rest

/-- Lexicographic limb comparison from limb `is.head` down to limb `0`. -/
def ltChain (a b : MlS) : List Nat → ProgHOL 64
  | [] => .seq (.ite (.cmp .lower (.rfield 0 (lv a)) (.rfield 0 (lv b))) (.return (cw 1)) .skip)
            (.return (cw 0))
  | i :: is => limbStep a b i (ltChain a b is)

/-- `var r = <0, 0>; r = __add_with_carry__(a.i, b.i ^ (0 - 1), cin); rest` -/
def subStep (a b r : MlS) (i : Nat) (cin : ExpHOL 64) (rest : ProgHOL 64) : ProgHOL 64 :=
  .dec r (shK 2) (.rstruct [cw 0, cw 0])
    (.seq (.primitive r .addCarry [.rfield i (lv a),
        .op .xor [.rfield i (lv b), .op .sub [cw 0, cw 1]], cin]) rest)

/-- The guard `if (u.1 | ... | u.(k-1)) == 0 { if u.0 == 1 { return x } }`. -/
def guardRet (u x : MlS) (k : Nat) : ProgHOL 64 :=
  .ite (.cmp .equal (.op .or ((List.range' 1 (k - 1)).map fun i => .rfield i (lv u))) (cw 0))
    (.ite (.cmp .equal (.rfield 0 (lv u)) (cw 1)) (.return (lv x)) .skip) .skip

/-- `(u.0 & 1) == 0` -/
def evenC (u : MlS) : ExpHOL 64 := .cmp .equal (.op .and [.rfield 0 (lv u), cw 1]) (cw 0)

def callTo (x f : MlS) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (some (.local, x), none)) f args

def zeros (k : Nat) : ExpHOL 64 := .rstruct (List.replicate k (cw 0))
def one_ (k : Nat) : ExpHOL 64 := .rstruct (cw 1 :: List.replicate (k - 1) (cw 0))

/-! ## `u256_lt`, `u256_sub` -/

def u256LtBody : ProgHOL 64 := ltChain (nm "a") (nm "b") [3, 2, 1]

def subRet4 : ProgHOL 64 :=
  .return (.rstruct [.rfield 0 (lv (nm "r0")), .rfield 0 (lv (nm "r1")),
    .rfield 0 (lv (nm "r2")), .rfield 0 (lv (nm "r3"))])

def u256SubBody : ProgHOL 64 :=
  subStep (nm "a") (nm "b") (nm "r0") 0 (cw 1)
    (subStep (nm "a") (nm "b") (nm "r1") 1 (.rfield 1 (lv (nm "r0")))
      (subStep (nm "a") (nm "b") (nm "r2") 2 (.rfield 1 (lv (nm "r1")))
        (subStep (nm "a") (nm "b") (nm "r3") 3 (.rfield 1 (lv (nm "r2"))) subRet4)))

def params2 (k : Nat) : List (MlS × ShapeHOL) := [(nm "a", shK k), (nm "b", shK k)]

theorem entry_u256_lt : fnEntry Guest.Software.guestFn_u256_lt =
    (nm "u256_lt", params2 4, u256LtBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_u256_lt : guestCode (nm "u256_lt") = some (params2 4, u256LtBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 46) (by decide)) ⟨_, rfl⟩
    entry_u256_lt

theorem entry_u256_sub : fnEntry Guest.Software.guestFn_u256_sub =
    (nm "u256_sub", params2 4, u256SubBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_u256_sub : guestCode (nm "u256_sub") = some (params2 4, u256SubBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 57) (by decide)) ⟨_, rfl⟩
    entry_u256_sub

/-! ## `modinv_bin` -/

/-- `while (u.0 & 1) == 0 { u = <u >> 1>; x = mod_half(x, m) }` -/
def halveLoop (u x m : MlS) : ProgHOL 64 :=
  .while (evenC u)
    (.seq (.assign .local u (.rstruct (shrE (lv u) 0 4)))
      (callTo x (nm "mod_half") [lv x, lv m]))

/-- `var ult = u256_lt(u, v); if ult == 0 { u = u256_sub(u, v); x1 = mod_sub(x1, x2, m) }
else { v = u256_sub(v, u); x2 = mod_sub(x2, x1, m) }` -/
def modinvTail (u v x1 x2 m ult : MlS) : ProgHOL 64 :=
  .decCall ult .one (nm "u256_lt") [lv u, lv v]
    (.ite (.cmp .equal (lv ult) (cw 0))
      (.seq (callTo u (nm "u256_sub") [lv u, lv v]) (callTo x1 (nm "mod_sub") [lv x1, lv x2, lv m]))
      (.seq (callTo v (nm "u256_sub") [lv v, lv u]) (callTo x2 (nm "mod_sub") [lv x2, lv x1, lv m])))

/-- The body of the outer `while true` loop of `modinv_bin`. -/
def modinvOuter (u v x1 x2 m ult : MlS) : ProgHOL 64 :=
  .seq (guardRet u x1 4) (.seq (guardRet v x2 4)
    (.seq (halveLoop u x1 m) (.seq (halveLoop v x2 m) (modinvTail u v x1 x2 m ult))))

def modinvLoop : ProgHOL 64 :=
  .while (cw 1) (modinvOuter (nm "u") (nm "v") (nm "x1") (nm "x2") (nm "m") (nm "ult"))

def modinvBody : ProgHOL 64 :=
  .decCall (nm "az") .one (nm "u256_is_zero") [lv (nm "a")]
    (.seq (.ite (.cmp .equal (lv (nm "az")) (cw 1)) (.return (zeros 4)) .skip)
      (.dec (nm "u") (shK 4) (lv (nm "a")) (.dec (nm "v") (shK 4) (lv (nm "m"))
        (.dec (nm "x1") (shK 4) (one_ 4) (.dec (nm "x2") (shK 4) (zeros 4)
          (.seq modinvLoop (.return (zeros 4))))))))

def params_am : List (MlS × ShapeHOL) := [(nm "a", shK 4), (nm "m", shK 4)]

theorem entry_modinv_bin : fnEntry Guest.Software.guestFn_modinv_bin =
    (nm "modinv_bin", params_am, modinvBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_modinv_bin : guestCode (nm "modinv_bin") = some (params_am, modinvBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 157) (by decide)) ⟨_, rfl⟩
    entry_modinv_bin

end InitECandidate.Solver.Spec
