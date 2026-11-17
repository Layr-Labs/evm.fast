import InitECandidate.Solver.MemSafe.ArenaCost.Loops
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
theorem ite_condition_eval {c : ExpHOL width} {a b : ProgHOL width} {t : PanSemStateFiniteExact width σ}
    (h : (evaluateHOLFiniteState t (.ite c a b)).1 = none) :
    ∃ (inst : DecidablePred t.toExact.memaddrs) (v : ValueHOL width),
      @evalHOLExact width σ _ t.toExact inst c = some v := by
  revert h
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · rename_i w hw
    intro _
    exact ⟨_,_,hw⟩
  · intro h; simp at h

theorem comparison_left_eval {o : Flapjack.Cmp} {a b : ExpHOL width}
    {t : PanSemStateFiniteExact width σ} {inst : DecidablePred t.toExact.memaddrs} {v : ValueHOL width}
    (h : @evalHOLExact width σ _ t.toExact inst (.cmp o a b) = some v) :
    ∃ x, @evalHOLExact width σ _ t.toExact inst a = some (.val (.word x)) := by
  simp only [evalHOLExact] at h
  split at h
  · rename_i x y hx hy
    exact ⟨x,hx⟩
  · simp at h

def readerAccessB : ProgHOL width → Option (ExpHOL width × MlS × Bool)
  | .seq (.ite (.cmp _ (.load .one (.op .add [B,.var .local i])) _) (.return _) .skip) _ =>
      if isBase i B then some (B,i,false) else none
  | .seq (.ite (.cmp _ (.loadByte (.op .add [B,.var .local i])) _) (.return _) .skip) _ =>
      if isBase i B then some (B,i,false) else none
  | b => arenaAccessB b

theorem readerAccessB_hit {body : ProgHOL width} {B : ExpHOL width} {i : MlS} {sh : Bool}
    (h : readerAccessB body = some (B,i,sh)) {t : PanSemStateFiniteExact width σ}
    (hc : Completes t body) :
    ∃ w, addrOf B i t = some w ∧ Hit (if sh then t.shMemaddrs else t.memaddrs) w := by
  unfold readerAccessB at h
  split at h
  · rename_i op B' i' rhs ret rest
    split at h
    · rename_i hB
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      obtain ⟨inst,v,hv⟩ := ite_condition_eval (seq_completes (noContB_sound _ (by rfl)) hc)
      obtain ⟨x,hx⟩ := comparison_left_eval hv
      obtain ⟨w,hw,hhit⟩ := eval_load_one_hit hx
      exact ⟨w,eval_addr inst hB hw,hhit⟩
    · cases h
  · rename_i op B' i' rhs ret rest
    split at h
    · rename_i hB
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      obtain ⟨inst,v,hv⟩ := ite_condition_eval (seq_completes (noContB_sound _ (by rfl)) hc)
      obtain ⟨x,hx⟩ := comparison_left_eval hv
      obtain ⟨w,hw,hhit⟩ := eval_load_byte_hit hx
      exact ⟨w,eval_addr inst hB hw,hhit⟩
    · cases h
  · exact arenaAccessB_hit h hc

def readerLoopOk (b : ProgHOL width) : Bool :=
  match readerAccessB b with
  | some (B,i,_) => stepsRB i addrStepMax [] b && baseKeptB B b
  | none => false
theorem readerLoopOk_sound (hX : DomBounded X) {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : readerLoopOk b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ 35 + alignSlack width + 1) * (B + 1)) := by
  unfold readerLoopOk at h
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
    obtain ⟨w, hw, hhit⟩ := readerAccessB_hit hacc hc
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


#print axioms readerAccessB_hit
#print axioms readerLoopOk_sound
end InitECandidate.Solver.SourceCost
