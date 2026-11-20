import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore
import InitECandidate.Solver.Improvements.AcceptedInitializedLoopCost

/-! All-state signed-loop improvements for htab_union_into and
merge_tx_into_block. Literal zero initialization makes a nonnegative counter;
the signed guard prevents reaching the sign bit. No table provenance or
capacity bound is assumed. Actual guest identities and table bindings are
separate obligations. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace ThirdMergeCore
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedIvvhCalleeCore (nm lv cw CalleeBound)
variable {σ : Type} {X : Ctx 64}
def v (s : String) : ExpHOL 64 := lv (nm s)
def callD (f : String) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (none, none)) (nm f) args
def sh2 : ShapeHOL := .comb [.one, .one]
def sh3 : ShapeHOL := .comb [.one, .one, .one]
def fld (i : Nat) (s : String) : ExpHOL 64 := .rfield i (v s)
def load24 (s : String) : ExpHOL 64 := .load .one (.op .add [v s, cw 24])
def increment : ProgHOL 64 := .assign .local (nm "i") (.op .add [v "i", cw 1])
def unionLoopBody : ProgHOL 64 :=
  .decCall (nm "s") sh3 (nm "htab_item") [v "src", v "i"]
    (.seq (.ite (.cmp .notEqual (fld 0 "s") (cw 0))
      (callD "htab_set" [v "dst", fld 1 "s", fld 2 "s"]) .skip) increment)
def unionBody : ProgHOL 64 :=
  .dec (nm "cap") .one (load24 "src")
    (.dec (nm "i") .one (cw 0)
      (.seq (.while (.cmp .less (v "i") (v "cap")) unionLoopBody) (.return (cw 0))))
def unionParams : List (MlS × ShapeHOL) := [(nm "dst", .one), (nm "src", .one)]
def unionCost (T S : Nat) : Nat := 2^63 * (3 + T + S)

theorem callD_cost {f : String} {args : List (ExpHOL 64)} {B : Nat}
    (hf : CalleeBound σ X (nm f) B) : Cost σ X (callD f args) (1 + B) := by
  exact cost_call (Bh := 0) hf (by intro _ _ _ _ h; cases h)

theorem union_loop_cost {T S : Nat}
    (ht : CalleeBound σ X (nm "htab_item") T) (hs : CalleeBound σ X (nm "htab_set") S) :
    Cost σ X unionLoopBody (2 + T + S) := by
  have hi : Cost σ X (.ite (.cmp .notEqual (fld 0 "s") (cw 0))
      (callD "htab_set" [v "dst", fld 1 "s", fld 2 "s"]) .skip) (1 + S) := by
    simpa only [Nat.max_zero] using cost_ite (callD_cost hs) (cost_skip (σ := σ) (X := X))
  have hp : Cost σ X unionLoopBody (1 + T + ((1 + S) + 0)) :=
    cost_decCall ht (cost_seq hi (cost_assign _ _ _))
  have heq : 1 + T + ((1 + S) + 0) = 2 + T + S := by omega
  rw [heq] at hp
  exact hp

theorem union_body_cost {T S : Nat}
    (ht : CalleeBound σ X (nm "htab_item") T) (hs : CalleeBound σ X (nm "htab_set") S) :
    Cost σ X unionBody (unionCost T S) := by
  have hp := AcceptedInitializedLoopCost.cost_initialized_seq (E := v "cap")
    (union_loop_cost ht hs)
    (stepsB_sound (nm "i") true unionLoopBody (by rfl))
    (cost_return (σ := σ) (X := X) (cw 0))
  have heq : 2^63 * (2 + T + S + 1) + 0 = unionCost T S := by
    unfold unionCost
    congr 1
    omega
  rw [heq] at hp
  exact cost_dec hp

def globalLoad (s : String) (k : Nat) : ExpHOL 64 :=
  .load .one (.op .add [.var .global (nm s), cw k])
def mergeU (k : Nat) : ProgHOL 64 := callD "htab_union_into" [globalLoad "bs" k, globalLoad "ts" k]
def mergeBin : ProgHOL 64 :=
  .ite (.cmp .equal (fld 0 "m") (cw 0))
    (.seq (.call (some (some (.local, nm "binner"), none)) (nm "htab_new") [cw 32, cw 8])
      (callD "htab_set" [v "bouter", fld 1 "s", v "binner"]))
    (.assign .local (nm "binner") (fld 1 "m"))
def mergeThen : ProgHOL 64 :=
  .decCall (nm "m") sh2 (nm "htab_get") [v "bouter", fld 1 "s"]
    (.dec (nm "binner") .one (cw 0)
      (.seq mergeBin (callD "htab_union_into" [v "binner", fld 2 "s"])))
def mergeLoopBody : ProgHOL 64 :=
  .decCall (nm "s") sh3 (nm "htab_item") [v "outer", v "i"]
    (.seq (.ite (.cmp .notEqual (fld 0 "s") (cw 0)) mergeThen .skip) increment)
def mergeRest : ProgHOL 64 :=
  .dec (nm "outer") .one (globalLoad "ts" 32)
    (.dec (nm "bouter") .one (globalLoad "bs" 32)
      (.dec (nm "cap") .one (load24 "outer")
        (.dec (nm "i") .one (cw 0)
          (.seq (.while (.cmp .less (v "i") (v "cap")) mergeLoopBody) (.return (cw 0))))))
def mergeBody : ProgHOL 64 :=
  .seq (mergeU 24) (.seq (mergeU 8) (.seq (mergeU 40) (.seq (mergeU 16) (.seq (mergeU 48) mergeRest))))

structure Costs (σ : Type) (X : Ctx 64) (T S G N U : Nat) : Prop where
  item : CalleeBound σ X (nm "htab_item") T
  set : CalleeBound σ X (nm "htab_set") S
  get : CalleeBound σ X (nm "htab_get") G
  new : CalleeBound σ X (nm "htab_new") N
  union : CalleeBound σ X (nm "htab_union_into") U
def mergeLoopB (T S G N U : Nat) : Nat := 5 + T + S + G + N + U
def mergeCost (T S G N U : Nat) : Nat := 5 * (1 + U) + 2^63 * (mergeLoopB T S G N U + 1)

theorem merge_loop_cost {T S G N U : Nat} (hc : Costs σ X T S G N U) :
    Cost σ X mergeLoopBody (mergeLoopB T S G N U) := by
  have hnew : Cost σ X (.call (some (some (.local, nm "binner"), none)) (nm "htab_new") [cw 32, cw 8]) (1 + N) :=
    cost_call (Bh := 0) hc.new (by intro _ _ _ _ h; cases h)
  have hbin : Cost σ X mergeBin (2 + N + S) := by
    have hp : Cost σ X mergeBin (max ((1 + N) + (1 + S)) 0) :=
      cost_ite (cost_seq hnew (callD_cost hc.set))
        (cost_assign (σ := σ) (X := X) .local (nm "binner") (fld 1 "m"))
    have heq : max ((1 + N) + (1 + S)) 0 = 2 + N + S := by omega
    rw [heq] at hp
    exact hp
  have hthen : Cost σ X mergeThen (1 + G + ((2 + N + S) + (1 + U))) :=
    cost_decCall hc.get (cost_dec (cost_seq hbin (callD_cost hc.union)))
  have hite : Cost σ X (.ite (.cmp .notEqual (fld 0 "s") (cw 0)) mergeThen .skip)
      (max (1 + G + ((2 + N + S) + (1 + U))) 0) :=
    cost_ite hthen (cost_skip (σ := σ) (X := X))
  simp only [Nat.max_zero] at hite
  have hp : Cost σ X mergeLoopBody (1 + T + ((1 + G + ((2 + N + S) + (1 + U))) + 0)) :=
    cost_decCall hc.item (cost_seq hite (cost_assign _ _ _))
  have heq : 1 + T + ((1 + G + ((2 + N + S) + (1 + U))) + 0) = mergeLoopB T S G N U := by
    unfold mergeLoopB
    omega
  rw [heq] at hp
  exact hp

theorem merge_body_cost {T S G N U : Nat} (hc : Costs σ X T S G N U) :
    Cost σ X mergeBody (mergeCost T S G N U) := by
  have hp := AcceptedInitializedLoopCost.cost_initialized_seq (E := v "cap")
    (merge_loop_cost hc) (stepsB_sound (nm "i") true mergeLoopBody (by rfl))
    (cost_return (σ := σ) (X := X) (cw 0))
  change Cost σ X (.dec (nm "i") .one (cw 0)
    (.seq (.while (.cmp .less (v "i") (v "cap")) mergeLoopBody) (.return (cw 0))))
    (2^63 * (mergeLoopB T S G N U + 1) + 0) at hp
  have hi : Cost σ X (.dec (nm "i") .one (cw 0)
    (.seq (.while (.cmp .less (v "i") (v "cap")) mergeLoopBody) (.return (cw 0))))
    (2^63 * (mergeLoopB T S G N U + 1)) := by
    simpa only [Nat.add_zero] using hp
  have hrest : Cost σ X mergeRest (2^63 * (mergeLoopB T S G N U + 1)) := by
    exact cost_dec (cost_dec (cost_dec hi))
  have hU (k : Nat) : Cost σ X (mergeU k) (1 + U) := callD_cost hc.union
  have hb := cost_seq (hU 24) (cost_seq (hU 8) (cost_seq (hU 40) (cost_seq (hU 16) (cost_seq (hU 48) hrest))))
  change Cost σ X mergeBody _ at hb
  have heq : (1 + U) + ((1 + U) + ((1 + U) + ((1 + U) + ((1 + U) +
    2^63 * (mergeLoopB T S G N U + 1))))) = mergeCost T S G N U := by
    unfold mergeCost
    omega
  rw [heq] at hb
  exact hb

#print axioms union_body_cost
#print axioms merge_body_cost
end ThirdMergeCore
