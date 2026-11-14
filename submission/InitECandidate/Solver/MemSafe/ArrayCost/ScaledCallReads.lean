import InitECandidate.Solver.MemSafe.ArrayCost.ScaledReads
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.ArrayCost.Read
open InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type} {X : Ctx 64}

theorem call_args_eval {t : PanSemStateFiniteExact 64 σ} {info} {f : MlS} {args : List (ExpHOL 64)}
    (hc : Completes t (.call info f args)) :
    ∃ (inst : DecidablePred t.toExact.memaddrs) (vs : List (ValueHOL 64)),
      @evalListHOLExact 64 σ _ t.toExact inst args = some vs := by
  unfold Completes at hc
  rw [evaluateHOLFiniteState_eq_evaluate_def] at hc
  dsimp only at hc
  split at hc
  · simp at hc
  · rename_i vs hvs
    exact ⟨_,vs,hvs⟩

theorem decCall_args_eval {t : PanSemStateFiniteExact 64 σ} {rn f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {rest : ProgHOL 64} (hc : Completes t (.decCall rn sh f args rest)) :
    ∃ (inst : DecidablePred t.toExact.memaddrs) (vs : List (ValueHOL 64)),
      @evalListHOLExact 64 σ _ t.toExact inst args = some vs := by
  unfold Completes at hc
  rw [evaluateHOLFiniteState_eq_evaluate_def] at hc
  dsimp only at hc
  split at hc
  · simp at hc
  · rename_i vs hvs
    exact ⟨_,vs,hvs⟩

theorem list_first_eval {t : PanSemStateFiniteExact 64 σ} {inst : DecidablePred t.toExact.memaddrs}
    {e : ExpHOL 64} {args : List (ExpHOL 64)} {vs : List (ValueHOL 64)}
    (h : @evalListHOLExact 64 σ _ t.toExact inst (e::args) = some vs) :
    ∃ v, @evalHOLExact 64 σ _ t.toExact inst e = some v := by
  simp only [evalListHOLExact] at h
  split at h
  · rename_i v ws hv hws
    exact ⟨v,hv⟩
  · simp at h

def callScaledAccessB : ProgHOL 64 → Option (ExpHOL 64 × MlS × BitVec 64)
  | .call info f ((.load .one (.op .add [B,.panop .mul [.var .local i,.const k]]))::args) =>
      if isBase i B then some (B,i,k) else none
  | .seq (.call info f ((.load .one (.op .add [B,.panop .mul [.var .local i,.const k]]))::args)) rest =>
      if isBase i B && noContB (.call info f ((.load .one (.op .add [B,.panop .mul [.var .local i,.const k]]))::args))
      then some (B,i,k) else none
  | .decCall rn sh f ((.load .one (.op .add [B,.panop .mul [.var .local i,.const k]]))::args) rest =>
      if isBase i B then some (B,i,k) else none
  | b => scaledAccessB b

theorem callScaledAccessB_hit {body : ProgHOL 64} {B : ExpHOL 64} {i : MlS} {k : BitVec 64}
    (h : callScaledAccessB body = some (B,i,k)) {t : PanSemStateFiniteExact 64 σ}
    (hc : Completes t body) : ∃ w, scaledAddr B i k t = some w ∧ Hit t.memaddrs w := by
  unfold callScaledAccessB at h
  split at h
  · rename_i info f B' i' k' args
    split at h
    · rename_i hB
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      obtain ⟨inst,vs,hvs⟩ := call_args_eval hc
      obtain ⟨v,hv⟩ := list_first_eval hvs
      obtain ⟨w,hw,hhit⟩ := eval_load_one_hit hv
      exact ⟨w,eval_scaledAddr inst hB hw,hhit⟩
    · cases h
  · rename_i info f B' i' k' args rest
    split at h
    · rename_i hok
      simp only [Bool.and_eq_true] at hok
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      have hc0 := seq_completes (noContB_sound _ hok.2) hc
      obtain ⟨inst,vs,hvs⟩ := call_args_eval (Or.inl hc0)
      obtain ⟨v,hv⟩ := list_first_eval hvs
      obtain ⟨w,hw,hhit⟩ := eval_load_one_hit hv
      exact ⟨w,eval_scaledAddr inst hok.1 hw,hhit⟩
    · cases h
  · rename_i rn sh f B' i' k' args rest
    split at h
    · rename_i hB
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      obtain ⟨inst,vs,hvs⟩ := decCall_args_eval hc
      obtain ⟨v,hv⟩ := list_first_eval hvs
      obtain ⟨w,hw,hhit⟩ := eval_load_one_hit hv
      exact ⟨w,eval_scaledAddr inst hB hw,hhit⟩
    · cases h
  · exact scaledAccessB_hit h hc

def callScaledReadLoopOk (b : ProgHOL 64) : Bool :=
  match callScaledAccessB b with
  | some (B,i,k) => decide (1 ≤ k.toNat ∧ k.toNat ≤ addrStepMax) && stepsB i true b && baseKeptB B b
  | none => false

theorem callScaledReadLoopOk_sound (hX : DomBounded X) {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
    (h : callScaledReadLoopOk b = true) (hb : Cost σ X b C) :
    Cost σ X (.while c b) ((2^35 + alignSlack 64 + 1)*(C+1)) := by
  unfold callScaledReadLoopOk at h
  split at h
  · rename_i B i k hacc
    simp only [Bool.and_eq_true,decide_eq_true_eq] at h
    obtain ⟨⟨⟨hk1,hk2⟩,hst⟩,hkb⟩ := h
    obtain ⟨L,hL,⟨lo,hD⟩,⟨lo2,hD2⟩,hLen⟩ := hX
    have hLs : L + alignSlack 64 ≤ 2^64 := by omega
    refine (cost_while_addr (scaledAddr B i k) lo (L+alignSlack 64) addrStepMax hL hb
      (fun _ => rfl) ?_).mono (Nat.mul_le_mul_right _ (by omega))
    intro t ht hc
    obtain ⟨w,hw,hhit⟩ := callScaledAccessB_hit hacc hc
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
#print axioms callScaledAccessB_hit
#print axioms callScaledReadLoopOk_sound
end InitECandidate.Solver.MemSafe.ArrayCost.Read
