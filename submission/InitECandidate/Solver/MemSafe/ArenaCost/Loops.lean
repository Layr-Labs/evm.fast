import InitECandidate.Solver.MemSafe.ArenaCost.CopyLoops
import InitECandidate.Solver.MemSafe.ArenaCost.DestWrites
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
def arenaAccessB : ProgHOL width → Option (ExpHOL width × MlS × Bool)
  | .seq (.store (.op .add [B, .var .local i]) (.const _)) _ =>
      if isBase i B then some (B,i,false) else none
  | .seq (.storeByte (.op .add [B, .var .local i]) _) _ =>
      if isBase i B then some (B,i,false) else none
  | b => copyAccessB b

theorem arenaAccessB_hit {body : ProgHOL width} {B : ExpHOL width} {i : MlS} {sh : Bool}
    (h : arenaAccessB body = some (B,i,sh)) {t : PanSemStateFiniteExact width σ}
    (hc : Completes t body) :
    ∃ w, addrOf B i t = some w ∧ Hit (if sh then t.shMemaddrs else t.memaddrs) w := by
  unfold arenaAccessB at h
  split at h
  · rename_i B' i' v rest
    split at h
    · rename_i hB
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      obtain ⟨inst,w,hw,hhit⟩ := store_const_hit (seq_completes (noCont_store _ _) hc)
      exact ⟨w,eval_addr inst hB hw,hhit⟩
    · cases h
  · rename_i B' i' e rest
    split at h
    · rename_i hB
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      obtain ⟨inst,w,hw,hhit⟩ := storeByte_hit (seq_completes (noCont_storeByte _ _) hc)
      exact ⟨w,eval_addr inst hB hw,hhit⟩
    · cases h
  · exact copyAccessB_hit h hc

def arenaLoopOk (b : ProgHOL width) : Bool :=
  match arenaAccessB b with
  | some (B,i,_) => stepsRB i addrStepMax [] b && baseKeptB B b
  | none => false
theorem arenaLoopOk_sound (hX : DomBounded X) {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : arenaLoopOk b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ 35 + alignSlack width + 1) * (B + 1)) := by
  unfold arenaLoopOk at h
  split at h
  · rename_i Bs i sh hacc
    simp only [Bool.and_eq_true] at h
    obtain ⟨hst, hkb⟩ := h
    have hsteps := stepsRB_sound (σ := σ) i addrStepMax [] b hst
    obtain ⟨L, hL, ⟨lo1, hD1⟩, ⟨lo2, hD2⟩, hLen⟩ := hX
    have hLs : L + alignSlack width ≤ 2 ^ width := by omega
    refine (cost_while_addr (addrOf Bs i) (if sh then lo2 else lo1) (L + alignSlack width)
      addrStepMax (by omega) hb (fun _ => rfl) ?_).mono
      (Nat.mul_le_mul_right _ (by omega))
    intro t ht hc
    obtain ⟨w, hw, hhit⟩ := arenaAccessB_hit hacc hc
    refine ⟨w, hw, ?_, ?_⟩
    · cases sh
      · simp only [Bool.false_eq_true, if_false] at hhit ⊢
        exact hit_offset hD1 hLs (ht.2.1 ▸ hhit)
      · simp only [if_true] at hhit ⊢
        exact hit_offset hD2 hLs (ht.2.2 ▸ hhit)
    · have hw' := hw
      unfold addrOf at hw'
      cases hv : wordLocal t i with
      | none => rw [hv] at hw'; split at hw' <;> simp_all
      | some v =>
          have hv' := wordLocal_some hv
          obtain ⟨d, hd1, hd2, hd⟩ := hsteps t v hv' (factsHold_nil t) hc
          exact ⟨d, hd1, hd2, addrOf_step hw hv' hd (baseKept hkb hc)⟩
  · cases h

#print axioms arenaAccessB_hit
#print axioms arenaLoopOk_sound
end InitECandidate.Solver.SourceCost
