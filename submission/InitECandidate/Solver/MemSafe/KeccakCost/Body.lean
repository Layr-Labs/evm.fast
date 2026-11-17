import InitECandidate.Solver.MemSafe.BlsScalar.G1Body
import InitECandidate.Solver.MemSafe.FqCost.Retable.S077
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.KeccakCost
variable {σ : Type}
def body := (declPair Guest.Software.guestFn_keccak256).2.2
def pieces := (BlsScalar.Parts.extract body).getD (.hole,.skip)
def tail : ProgHOL 64 := match pieces.2 with | .dec _ _ _ (.seq _ t) => t | _ => .skip
def loopBody : ProgHOL 64 := match pieces.2 with | .dec _ _ _ (.seq (.while _ b) _) => b | _ => .skip
def cond : ExpHOL 64 := .cmp .notLower (lv (nm "n")) (.op .add [lv (nm "i"),cw 136])
def P (s : State σ) : Prop := ModexpCost.Keep.Bound (nm "n") 135 s ∧
 s.locals.lookup (nm "i") = some (.val (.word (0 : BitVec 64)))
theorem cond_false {s : State σ} (hp : P s) : ¬CondTrue s cond := by
 obtain ⟨⟨N,hN,hNM⟩,hi⟩ := hp
 intro ⟨W,hW,hNZ⟩
 have he := ev_cmp (o := .notLower) (ev_lw hN) (ev_add2 (ev_lw hi) (ev_cw s 136))
 have hlt : N.toNat < (136 : BitVec 64).toNat := by change N.toNat < 136;omega
 have hvec : N < (136 : BitVec 64) := hlt
 have hnle : ¬ (136 : BitVec 64) ≤ N := by
  change ¬ (136 : BitVec 64).toNat ≤ N.toNat
  omega
 have hz : ev s cond = some (.val (.word (0 : BitVec 64))) := by
  split at he
  · rename_i ht
    have hl' : N < (0+(136 : BitVec 64)) := by simpa using hvec
    change (!decide (N < (0+(136 : BitVec 64)))) = true at ht
    simp only [hl',decide_true,Bool.not_true,Bool.false_eq_true] at ht
  · exact he
 change ev s cond = some (.val (.word W)) at hW
 rw [hz] at hW
 have hw : (0 : BitVec 64) = W := by simpa using hW
 exact hNZ hw.symm
#print axioms cond_false
theorem loop_cost : Inv.CostP σ guestCtx P (.while cond loopBody) 1 := by
 have hf : ∀ s : State σ, P s → CondTrue s cond → False := fun s hp hc => cond_false hp hc
 have hc : Inv.CostP σ guestCtx P (.while cond loopBody) ((0+1)*(0+1)) := by
  refine Inv.costP_while (fun _ => 0) 0 ?_ (fun _ => rfl) ?_ ?_ ?_ ?_
  · intro s hp;exact hp
  · intro s hs hp hg;exact False.elim (hf s hp.1 hp.2)
  · intro s hs hp ht hr;exact False.elim (hf s hp.1 hp.2)
  · intro s hs hp hc;exact Nat.zero_le _
  · intro k s hs hp ht hr;exact False.elim (hf s hp.1 hp.2.1)
 exact hc
theorem stage_shape : pieces.2 = .dec (nm "i") .one (cw 0) (.seq (.while cond loopBody) tail) := by cbv
theorem stage_cost : Inv.CostP σ guestCtx (ModexpCost.Keep.Bound (nm "n") 135) pieces.2 446676598932 := by
 have ht : Cost σ guestCtx tail 446676598931 := FqCost.CombCore.analyze_sound FqCost.Retable.table77_sound (by cbv)
 rw [stage_shape]
 refine Inv.costP_dec fun s hs hp v hv hsh => ?_
 rw [ev_cw] at hv
 have hv' := Option.some.inj hv
 subst v
 have hseq : Inv.CostP σ guestCtx P (.seq (.while cond loopBody) tail) (1+446676598931) :=
  Inv.costP_seq (R := fun _ => True) loop_cost (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost ht)
 apply hseq.pre
 intro st hst he
 subst st
 obtain ⟨N,hN,hNM⟩ := hp
 refine ⟨⟨N,?_,hNM⟩,?_⟩
 · simpa [setVarHOLFinite,FUPDATE,show nm "i" ≠ nm "n" by decide] using hN
 · simp [setVarHOLFinite,FUPDATE]
theorem body_shape : CryptoCost.Stem.splice pieces.1 pieces.2 = body := by cbv
def prefixZero : ProgHOL 64 := .call (some (none,none)) (nm "memzero") [lv (nm "stp"),cw 200]
theorem prefix_shape : body = .dec (nm "stp") .one (.var .global (nm "keccak_st")) (.seq prefixZero pieces.2) := by cbv
def bound : Nat := 584115552441
theorem body_cost : Inv.CostP σ guestCtx (ModexpCost.Keep.Bound (nm "n") 135) body bound := by
 have hz : Cost σ guestCtx prefixZero 137438953509 := FqCost.CombCore.analyze_sound FqCost.Retable.table77_sound (by cbv)
 have hk : Keeps σ (nm "n") prefixZero := keepsB_sound _ _ (by cbv)
 rw [prefix_shape]
 exact ModexpCost.Keep.dec (by decide) (ModexpCost.Keep.seq (Inv.costP_of_cost hz) hk (stage_cost (σ := σ)))
#print axioms body_cost
end InitECandidate.Solver.MemSafe.KeccakCost
