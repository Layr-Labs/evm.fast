import InitECandidate.Solver.MemSafe.PairCost.Rule
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.ArrayCost.Read
open InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type} {X : Ctx 64}
def scaledAccessB : ProgHOL 64 → Option (ExpHOL 64 × MlS × BitVec 64)
  | .dec _ _ (.load .one (.op .add [B,.panop .mul [.var .local i,.const k]])) _ =>
      if isBase i B then some (B,i,k) else none
  | .dec _ _ (.loadByte (.op .add [B,.panop .mul [.var .local i,.const k]])) _ =>
      if isBase i B then some (B,i,k) else none
  | _ => none

theorem scaledAccessB_hit {body : ProgHOL 64} {B : ExpHOL 64} {i : MlS} {k : BitVec 64}
    (h : scaledAccessB body = some (B,i,k)) {t : PanSemStateFiniteExact 64 σ}
    (hc : Completes t body) : ∃ w, scaledAddr B i k t = some w ∧ Hit t.memaddrs w := by
  unfold scaledAccessB at h
  split at h
  · rename_i slot sh B' i' k' rest
    split at h
    · rename_i hB
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      obtain ⟨inst,v,hv⟩ := decl_source_eval hc
      obtain ⟨w,hw,hhit⟩ := eval_load_one_hit hv
      exact ⟨w,eval_scaledAddr inst hB hw,hhit⟩
    · cases h
  · rename_i slot sh B' i' k' rest
    split at h
    · rename_i hB
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      obtain ⟨inst,v,hv⟩ := decl_source_eval hc
      obtain ⟨w,hw,hhit⟩ := eval_load_byte_hit hv
      exact ⟨w,eval_scaledAddr inst hB hw,hhit⟩
    · cases h
  · cases h

def scaledReadLoopOk (b : ProgHOL 64) : Bool :=
  match scaledAccessB b with
  | some (B,i,k) => decide (1 ≤ k.toNat ∧ k.toNat ≤ addrStepMax) && stepsB i true b && baseKeptB B b
  | none => false

theorem scaledReadLoopOk_sound (hX : DomBounded X) {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
    (h : scaledReadLoopOk b = true) (hb : Cost σ X b C) :
    Cost σ X (.while c b) ((2^35 + alignSlack 64 + 1)*(C+1)) := by
  unfold scaledReadLoopOk at h
  split at h
  · rename_i B i k hacc
    simp only [Bool.and_eq_true,decide_eq_true_eq] at h
    obtain ⟨⟨⟨hk1,hk2⟩,hst⟩,hkb⟩ := h
    obtain ⟨L,hL,⟨lo,hD⟩,⟨lo2,hD2⟩,hLen⟩ := hX
    have hLs : L + alignSlack 64 ≤ 2^64 := by omega
    refine (cost_while_addr (scaledAddr B i k) lo (L+alignSlack 64) addrStepMax hL hb
      (fun _ => rfl) ?_).mono (Nat.mul_le_mul_right _ (by omega))
    intro t ht hc
    obtain ⟨w,hw,hhit⟩ := scaledAccessB_hit hacc hc
    refine ⟨w,hw,hit_offset hD hLs (ht.2.1 ▸ hhit),k,hk1,hk2,?_⟩
    have hsteps := stepsB_sound (σ := σ) i true b hst
    have hw' := hw
    unfold scaledAddr at hw'
    cases hv : wordLocal t i with
    | none => rw [hv] at hw'; split at hw' <;> simp_all
    | some v =>
      have hv' := wordLocal_some hv
      have hd := hsteps t v hv' hc
      have hnext := scaledAddr_step hw hv' hd (baseKept hkb hc)
      simpa using hnext
  · cases h
#print axioms scaledAccessB_hit
#print axioms scaledReadLoopOk_sound
end InitECandidate.Solver.MemSafe.ArrayCost.Read
