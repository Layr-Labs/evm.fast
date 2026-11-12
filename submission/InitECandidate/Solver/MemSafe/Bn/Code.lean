import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.MemSafe.Helpers.GuestCtx
import InitECandidate.Solver.MemSafe.Helpers.GuestTypes

set_option autoImplicit false

/-!
# `bn_to_be` and `bn_from_be`: the code

```
fun 1 bn_from_be(1 p, 1 nbytes, 1 d) {
  var nd = (nbytes + 3) >>> 2;
  var i = 0;
  while i <+ nd { st d + i * 8, 0; i = i + 1; }
  i = 0;
  while i <+ nbytes {
    var k = nbytes - 1 - i;
    var w = d + (k >>> 2) * 8;
    st w, (lds 1 w) | ((ld8 (p + i)) << ((k & 3) * 8));
    i = i + 1; }
  return nd; }
fun 1 bn_to_be(1 d, 1 nd, 1 out, 1 nbytes) {
  var i = 0;
  while i <+ nbytes {
    var k = nbytes - 1 - i;
    var byte = 0;
    if (k >>> 2) <+ nd { byte = ((lds 1 (d + (k >>> 2) * 8)) >>> ((k & 3) * 8)) & 255; }
    st8 out + i, byte;
    i = i + 1; }
  return 0; }
```

The bodies in the `Helpers/Loops.lean` syntax, certified by `cbv` against the guest AST
(`guestAst[624]`, `[625]`), and a four-parameter `lookupCode`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Bn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

theorem lookupCode_four {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f pa pb pc pd : MlS} {sa sb sc sd : ShapeHOL} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some ([(pa, sa), (pb, sb), (pc, sc), (pd, sd)], bd, rsh))
    (hnd : [pa, pb, pc, pd].Nodup)
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL}
    (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ ∃ A B C D, vs = [A, B, C, D] ∧
      shapeEqHOL sa (shapeOfHOLExact A) = true ∧ shapeEqHOL sb (shapeOfHOLExact B) = true ∧
      shapeEqHOL sc (shapeOfHOLExact C) = true ∧ shapeEqHOL sd (shapeOfHOLExact D) = true ∧
      callee.lookup pa = some A ∧ callee.lookup pb = some B ∧ callee.lookup pc = some C ∧
      callee.lookup pd = some D := by
  simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
    List.nodup_nil, and_true] at hnd
  obtain ⟨⟨hab, hac, had⟩, ⟨hbc, hbd⟩, hcd⟩ := hnd
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, hall⟩ := hcond
      match vs, hlen, hall with
      | [A, B, C, D], _, hall =>
          simp only [List.zip_cons_cons, List.zip_nil_right, List.all_cons, List.all_nil,
            Bool.and_true, Bool.and_eq_true] at hall
          refine ⟨rfl, rfl, A, B, C, D, rfl, hall.1, hall.2.1, hall.2.2.1, hall.2.2.2, ?_, ?_, ?_,
            ?_⟩
          · simp [hab, hac, had]
          · simp [hbc, hbd]
          · simp [hcd]
          · simp
    · simp at hx

/-! ## Names -/

def pN : MlS := nm "p"
def nbN : MlS := nm "nbytes"
def dN' : MlS := nm "d"
def ndN : MlS := nm "nd"
def iN' : MlS := nm "i"
def kN : MlS := nm "k"
def wN : MlS := nm "w"
def outN : MlS := nm "out"
def byteN : MlS := nm "byte"

/-! ## `bn_to_be` -/

/-- `byte = ((lds 1 (d + (k >>> 2) * 8)) >>> ((k & 3) * 8)) & 255` -/
def tbByteE : ExpHOL 64 :=
  .op .and [.shift .lsr (.load .one (.op .add [lv dN', .panop .mul [.shift .lsr (lv kN) (cw 2), cw 8]]))
    (.panop .mul [.op .and [lv kN, cw 3], cw 8]), cw 255]

/-- `(k >>> 2) <+ nd` -/
def tbCond : ExpHOL 64 := .cmp .lower (.shift .lsr (lv kN) (cw 2)) (lv ndN)

/-- The loop body: `k`, `byte`, the conditional read, the byte store, `i += 1`. -/
def toBeIter : ProgHOL 64 :=
  .dec kN .one (.op .sub [.op .sub [lv nbN, cw 1], lv iN'])
    (.dec byteN .one (cw 0)
      (.seq (.ite tbCond (.assign .local byteN tbByteE) .skip)
        (blk outN iN' 1 [(.b, 0, lv byteN)])))

def toBeBody : ProgHOL 64 :=
  .dec iN' .one (cw 0) (.seq (.while (ltN iN' nbN) toBeIter) (.return (cw 0)))

def toBePs : List (MlS × ShapeHOL) :=
  [(dN', .one), (ndN, .one), (outN, .one), (nbN, .one)]

theorem entry_bn_to_be : fnEntry Guest.Software.guestFn_bn_to_be =
    (nm "bn_to_be", toBePs, toBeBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_bn_to_be : guestCode (nm "bn_to_be") = some (toBePs, toBeBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 625) (by decide)) ⟨_, rfl⟩
    entry_bn_to_be

/-! ## `bn_from_be` -/

/-- `st d + i * 8, 0; i = i + 1` -/
def fbZeroIter : ProgHOL 64 :=
  .seq (.store (.op .add [lv dN', .panop .mul [lv iN', cw 8]]) (cw 0)) (incI iN' 1)

/-- `w = d + (k >>> 2) * 8` -/
def fbWE : ExpHOL 64 := .op .add [lv dN', .panop .mul [.shift .lsr (lv kN) (cw 2), cw 8]]

/-- `(lds 1 w) | ((ld8 (p + i)) << ((k & 3) * 8))` -/
def fbValE : ExpHOL 64 :=
  .op .or [.load .one (lv wN), .shift .lsl (.loadByte (.op .add [lv pN, lv iN']))
    (.panop .mul [.op .and [lv kN, cw 3], cw 8])]

def fbOrIter : ProgHOL 64 :=
  .dec kN .one (.op .sub [.op .sub [lv nbN, cw 1], lv iN'])
    (.dec wN .one fbWE (.seq (.store (lv wN) fbValE) (incI iN' 1)))

def fromBeBody : ProgHOL 64 :=
  .dec ndN .one (.shift .lsr (.op .add [lv nbN, cw 3]) (cw 2))
    (.dec iN' .one (cw 0)
      (.seq (.while (ltN iN' ndN) fbZeroIter)
        (.seq (.assign .local iN' (cw 0))
          (.seq (.while (ltN iN' nbN) fbOrIter) (.return (lv ndN))))))

def fromBePs : List (MlS × ShapeHOL) := [(pN, .one), (nbN, .one), (dN', .one)]

theorem entry_bn_from_be : fnEntry Guest.Software.guestFn_bn_from_be =
    (nm "bn_from_be", fromBePs, fromBeBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_bn_from_be : guestCode (nm "bn_from_be") = some (fromBePs, fromBeBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 624) (by decide)) ⟨_, rfl⟩
    entry_bn_from_be

end InitECandidate.Solver.MemSafe.Bn
