import InitECandidate.Solver.Improvements.AcceptedInitializedLoopCost
import InitECandidate.Solver.SourceCost.Checkers

/-!
# A tighter unconditional cost for is_valid_versioned_hashes

The literal code renderings below are copied from upstream
Layr-Labs/evm.fast f2f17565706587b9938b52b10c0199aa78b010ce,
Solver/MemSafe/Exb/IvvhCode.lean (Apache-2.0, BitWonka's accepted proof).
Modification: the loop is bounded under its actual zero counter initialization,
using factor 2^63 instead of the analyzer's conservative factor 2^64+1.
The core takes the unchanged outer-body cost as a premise; the heavy bridge
discharges it from the accepted analyzer and certifies the literal AST entry. No additional axioms or
admitted proofs are introduced. Lean replay is required before acceptance.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace AcceptedIvvhCalleeCore
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
open Flapjack.Basis.Pure.MlString

abbrev nm (s : String) : MlS := ofString s
def lv (x : MlS) : ExpHOL 64 := .var .local x
def cw (n : Nat) : ExpHOL 64 := .const (BitVec.ofNat 64 n)

def ivEl : ExpHOL 64 := .op .add [lv (nm "txs"), .panop .mul [lv (nm "i"), cw 16]]
def ivEl8 : ExpHOL 64 := .op .add [lv (nm "txs"), .panop .mul [lv (nm "i"), cw 16], cw 8]

def ivInner : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (lv (nm "k")) (lv (nm "nvh"))) (.return (cw 0)) .skip)
    (.decCall (nm "eq") .one (nm "memeq")
      [.op .add [.load .one (.op .add [lv (nm "tx"), cw 256]), .panop .mul [lv (nm "j"), cw 32]],
        .op .add [lv (nm "vh"), .panop .mul [lv (nm "k"), cw 32]], cw 32]
      (.seq (.ite (.cmp .equal (lv (nm "eq")) (cw 0)) (.return (cw 0)) .skip)
        (.seq (.assign .local (nm "k") (.op .add [lv (nm "k"), cw 1]))
          (.assign .local (nm "j") (.op .add [lv (nm "j"), cw 1])))))

def ivBlob : ProgHOL 64 :=
  .dec (nm "nb") .one (.load .one (.op .add [lv (nm "tx"), cw 264]))
    (.dec (nm "j") .one (cw 0) (.while (.cmp .less (lv (nm "j")) (lv (nm "nb"))) ivInner))

def ivOuter : ProgHOL 64 :=
  .decCall (nm "tx") .one (nm "decode_transaction") [.load .one ivEl, .load .one ivEl8]
    (.decCall (nm "isb") .one (nm "tx_is_blob") [lv (nm "tx")]
      (.seq (.ite (.cmp .notEqual (lv (nm "isb")) (cw 0)) ivBlob .skip)
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))))

def ivLoop : ProgHOL 64 := .while (.cmp .less (lv (nm "i")) (lv (nm "ntx"))) ivOuter

def ivTail : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (lv (nm "k")) (lv (nm "nvh"))) (.return (cw 0)) .skip) (.return (cw 1))

def ivBody : ProgHOL 64 :=
  .dec (nm "pl") .one (.load .one (.op .add [lv (nm "si"), cw 0]))
    (.dec (nm "txs") .one (.load .one (.op .add [lv (nm "pl"), cw 32]))
      (.dec (nm "ntx") .one (.load .one (.op .add [lv (nm "pl"), cw 40]))
        (.dec (nm "vh") .one (.load .one (.op .add [lv (nm "si"), cw 8]))
          (.dec (nm "nvh") .one (.load .one (.op .add [lv (nm "si"), cw 16]))
            (.dec (nm "k") .one (cw 0)
              (.dec (nm "i") .one (cw 0) (.seq ivLoop ivTail)))))))

def ivParams : List (MlS × ShapeHOL) := [(nm "si", .one)]

/-- Existing accepted table costs for the three callees used here. -/
def cD : Nat :=
  59285549721426468995490466905443198854109319367745618591015673292614832979410275

def cM : Nat := 73786976294838206468

def blobB : Nat := 2 ^ 63 * (cM + 2)
def outerB : Nat := 1 + cD + 1 + 0 + blobB
def tighterCost : Nat := 2 ^ 63 * (outerB + 1)

/-- Same raw statement as the accepted Spec.CalleeCost, without its imports. -/
def CalleeBound (σ : Type) (X : Ctx 64) (f : MlS) (B : Nat) : Prop :=
  ∀ vs body callee rs,
    lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
    Cost σ X body B

theorem outer_steps_calc : stepsB (nm "i") true ivOuter = true := by
  rfl

theorem inner_steps_calc : stepsB (nm "j") true ivInner = true := by
  rfl

theorem inner_cost {σ : Type} {X : Ctx 64}
    (hm : CalleeBound σ X (nm "memeq") cM) : Cost σ X ivInner (cM + 1) := by
  have h : Cost σ X ivInner (0 + (1 + cM + (0 + (0 + 0)))) := by
    unfold ivInner
    exact cost_seq (Bp := 0) (Bq := 1 + cM + (0 + (0 + 0)))
      (cost_ite (cost_return _) cost_skip)
      (cost_decCall hm
        (cost_seq (cost_ite (cost_return _) cost_skip)
          (cost_seq (cost_assign _ _ _) (cost_assign _ _ _))))
  have hz : 0 + (1 + cM + (0 + (0 + 0))) = cM + 1 := by decide
  rw [hz] at h
  exact h

theorem blob_cost {σ : Type} {X : Ctx 64}
    (hm : CalleeBound σ X (nm "memeq") cM) : Cost σ X ivBlob blobB := by
  have hj := AcceptedInitializedLoopCost.cost_initialized_loop
    (i := nm "j") (E := lv (nm "nb")) (inner_cost hm)
    (stepsB_sound (nm "j") true ivInner inner_steps_calc)
  have hz : 2 ^ 63 * (cM + 1 + 1) = blobB := by rfl
  rw [hz] at hj
  exact cost_dec hj

theorem outer_cost {σ : Type} {X : Ctx 64}
    (hd : CalleeBound σ X (nm "decode_transaction") cD)
    (htx : CalleeBound σ X (nm "tx_is_blob") 0)
    (hm : CalleeBound σ X (nm "memeq") cM) : Cost σ X ivOuter outerB := by
  have hbranch : Cost σ X
      (.ite (.cmp .notEqual (lv (nm "isb")) (cw 0)) ivBlob .skip) blobB := by
    simpa only [Nat.max_zero] using cost_ite (blob_cost hm) (cost_skip (σ := σ) (X := X))
  have houter : Cost σ X ivOuter (1 + cD + (1 + 0 + (blobB + 0))) := by
    unfold ivOuter
    exact cost_decCall hd (cost_decCall htx (cost_seq hbranch (cost_assign _ _ _)))
  have hz : 1 + cD + (1 + 0 + (blobB + 0)) = outerB := by rfl
  rw [hz] at houter
  exact houter

theorem tail_cost {σ : Type} {X : Ctx 64} : Cost σ X ivTail 0 := by
  unfold ivTail
  exact cost_seq (cost_ite (cost_return _) cost_skip) (cost_return _)

theorem body_cost {σ : Type} {X : Ctx 64}
    (hb : Cost σ X ivOuter outerB) : Cost σ X ivBody tighterCost := by
  have hi := AcceptedInitializedLoopCost.cost_initialized_seq
    (i := nm "i") (E := lv (nm "ntx")) hb
    (stepsB_sound (nm "i") true ivOuter outer_steps_calc)
    (tail_cost (σ := σ) (X := X))
  have hz : 2^63 * (outerB + 1) + 0 = tighterCost := by rfl
  rw [hz] at hi
  exact cost_dec (cost_dec (cost_dec (cost_dec (cost_dec (cost_dec hi)))))

theorem body_cost_from_callees {σ : Type} {X : Ctx 64}
    (hd : CalleeBound σ X (nm "decode_transaction") cD)
    (htx : CalleeBound σ X (nm "tx_is_blob") 0)
    (hm : CalleeBound σ X (nm "memeq") cM) : Cost σ X ivBody tighterCost :=
  body_cost (outer_cost hd htx hm)

/-- Code lookup inversion, copied from SourceCost/Table.lean to avoid its
    concrete guest cost-table dependencies. -/
theorem lookupCode_some {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {vs : List (ValueHOL 64)} {b : ProgHOL 64} {c : HolFiniteMapExact MlS (ValueHOL 64)}
    {r : ShapeHOL} (h : lookupCodeHOLFinite code f vs = some (b, c, r)) :
    ∃ ps, code f = some (ps, b, r) := by
  unfold lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body cl rs hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, -, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    split at hx
    · simp at hx
    · rename_i ps bd rr hcode
      split at hx
      · simp only [Option.some.injEq, Prod.mk.injEq] at hx
        obtain ⟨rfl, -, rfl⟩ := hx
        exact ⟨ps, hcode⟩
      · simp at hx

theorem callee_cost_from_callees {σ : Type} {X : Ctx 64}
    (installed : X.code.lookup (nm "is_valid_versioned_hashes") = some (ivParams, ivBody, .one))
    (hd : CalleeBound σ X (nm "decode_transaction") cD)
    (htx : CalleeBound σ X (nm "tx_is_blob") 0)
    (hm : CalleeBound σ X (nm "memeq") cM) :
    CalleeBound σ X (nm "is_valid_versioned_hashes") tighterCost := by
  intro vs body callee rs hl
  obtain ⟨ps, hcode⟩ := lookupCode_some hl
  rw [installed] at hcode
  have hbody : body = ivBody := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [hbody]
  exact body_cost_from_callees hd htx hm

#print axioms callee_cost_from_callees
#print axioms inner_steps_calc
#print axioms inner_cost
#print axioms blob_cost
#print axioms outer_cost
#print axioms body_cost_from_callees
#print axioms outer_steps_calc
#print axioms body_cost
end AcceptedIvvhCalleeCore
