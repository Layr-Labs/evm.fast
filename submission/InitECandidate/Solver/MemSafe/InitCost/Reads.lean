import InitECandidate.Solver.MemSafe.ReaderCost.Loops
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
theorem decl_source_eval {n : MlS} {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width}
    {t : PanSemStateFiniteExact width σ} (h : Completes t (.dec n sh e b)) :
    ∃ (inst : DecidablePred t.toExact.memaddrs) (v : ValueHOL width),
      @evalHOLExact width σ _ t.toExact inst e = some v := by
  unfold Completes at h
  rw [evaluateHOLFiniteState_eq_evaluate_def] at h
  dsimp only at h
  split at h
  · simp at h
  · rename_i v hv
    exact ⟨_,v,hv⟩

theorem op_first_eval {o : Flapjack.BinOp} {a : ExpHOL width} {rest : List (ExpHOL width)}
    {t : PanSemStateFiniteExact width σ} {inst : DecidablePred t.toExact.memaddrs} {v : ValueHOL width}
    (h : @evalHOLExact width σ _ t.toExact inst (.op o (a::rest)) = some v) :
    ∃ x, @evalHOLExact width σ _ t.toExact inst a = some x := by
  cases ha : @evalHOLExact width σ _ t.toExact inst a with
  | none => simp only [evalHOLExact,evalListHOLExact,ha] at h; simp at h
  | some x => exact ⟨x,rfl⟩

def initAccessB : ProgHOL width → Option (ExpHOL width × MlS × Bool)
  | .dec _ _ (.op .xor [.loadByte (.op .add [B,.var .local i]),_]) _ =>
      if isBase i B then some (B,i,false) else none
  | b => readerAccessB b

theorem initAccessB_hit {body : ProgHOL width} {B : ExpHOL width} {i : MlS} {sh : Bool}
    (h : initAccessB body = some (B,i,sh)) {t : PanSemStateFiniteExact width σ}
    (hc : Completes t body) :
    ∃ w, addrOf B i t = some w ∧ Hit (if sh then t.shMemaddrs else t.memaddrs) w := by
  unfold initAccessB at h
  split at h
  · rename_i n sh' B' i' rhs rest
    split at h
    · rename_i hB
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      obtain ⟨inst,v,hv⟩ := decl_source_eval hc
      obtain ⟨x,hx⟩ := op_first_eval hv
      obtain ⟨w,hw,hhit⟩ := eval_load_byte_hit hx
      exact ⟨w,eval_addr inst hB hw,hhit⟩
    · cases h
  · exact readerAccessB_hit h hc

def initReadLoopOk (b : ProgHOL width) : Bool :=
  match initAccessB b with
  | some (B,i,_) => stepsRB i addrStepMax [] b && baseKeptB B b
  | none => false
theorem initReadLoopOk_sound (hX : DomBounded X) {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : initReadLoopOk b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ 35 + alignSlack width + 1) * (B + 1)) := by
  unfold initReadLoopOk at h
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
    obtain ⟨w, hw, hhit⟩ := initAccessB_hit hacc hc
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


#print axioms initAccessB_hit
#print axioms initReadLoopOk_sound
end InitECandidate.Solver.SourceCost
