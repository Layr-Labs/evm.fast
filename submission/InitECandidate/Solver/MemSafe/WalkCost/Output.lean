import InitECandidate.Solver.MemSafe.WalkCost.Memory
set_option autoImplicit false
set_option maxHeartbeats 0
namespace InitECandidate.Solver.MemSafe.WalkCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
variable {width : Nat} [NeZero width] {σ : Type}
def ReadOutput (n : MlS) (p : ProgHOL width) : Prop :=
 ∀ s : PanSemStateFiniteExact width σ, (evaluateHOLFiniteState s p).1 = none →
 ∃ w, s.memaddrs w ∧ (evaluateHOLFiniteState s p).2.locals.lookup n = some (.val (s.memory w))

theorem read_seq {n : MlS} {a b : ProgHOL width}
 (ha : Frame σ (fun _ => true) a) (hb : ReadOutput (σ := σ) n b) :
 ReadOutput (σ := σ) n (.seq a b) := by
 intro s hn
 have he := evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)
 dsimp only at he
 cases ho : (evaluateHOLFiniteState s a).1 with
 | none =>
   simp only [ho] at he
   rw [he] at hn ⊢
   obtain ⟨w,hd,hw⟩ := hb _ hn
   obtain ⟨L,hs,_,_⟩ := ha s ho
   exact ⟨w,by simpa only [hs] using hd,by simpa only [hs] using hw⟩
 | some r =>
   simp only [ho] at he
   rw [he] at hn
   rw [ho] at hn
   cases hn

theorem read_ite {n : MlS} {c : ExpHOL width} {a b : ProgHOL width}
 (ha : ReadOutput (σ := σ) n a) (hb : ReadOutput (σ := σ) n b) :
 ReadOutput (σ := σ) n (.ite c a b) := by
 intro s hn
 have he := evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)
 dsimp only at he
 split at he
 · split at he
   · rw [he] at hn ⊢;exact hb s hn
   · rw [he] at hn ⊢;exact ha s hn
 · rw [he] at hn;cases hn

theorem load_value {s : PanSemStateFiniteExact width σ} {e : ExpHOL width}
 {inst : DecidablePred s.toExact.memaddrs} {value : ValueHOL width}
 (hv : @evalHOLExact width σ _ s.toExact inst (.load .one e) = some value) :
 ∃ w, s.memaddrs w ∧ value = .val (s.memory w) := by
 simp only [evalHOLExact] at hv
 split at hv
 · split at hv
   · rename_i w hw
     unfold memLoadHOLExact at hv
     split at hv
     · exact ⟨w,by assumption,(Option.some.inj hv).symm⟩
     · simp at hv
   · simp at hv
 · simp at hv

theorem read_assign {n : MlS} {e : ExpHOL width} :
 ReadOutput (σ := σ) n (.assign .local n (.load .one e)) := by
 intro s hn
 have he := evaluateHOLFiniteState_eq_evaluate_def s (.assign .local n (.load .one e))
 dsimp only at he
 cases hev : @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) (.load .one e) with
 | none =>
   simp only [hev] at he
   rw [he] at hn
   cases hn
 | some value =>
   simp only [hev] at he
   obtain ⟨w,hd,hv⟩ := load_value hev
   subst value
   split at he
   · rw [he]
     exact ⟨w,hd,by simp [setKvarHOLFinite,setVarHOLFinite,FUPDATE]⟩
   · rw [he] at hn;cases hn

theorem read_dec {n y : MlS} {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width}
 (hy : n ≠ y) (hb : ReadOutput (σ := σ) n b) :
 ReadOutput (σ := σ) n (.dec y sh e b) := by
 intro s hn
 have he := evaluateHOLFiniteState_eq_evaluate_def s (.dec y sh e b)
 dsimp only at he
 cases hev : @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a)) e with
 | none =>
   simp only [hev] at he
   rw [he] at hn
   cases hn
 | some value =>
   simp only [hev] at he
   split at he
   · rw [he] at hn ⊢
     dsimp only at hn ⊢
     obtain ⟨w,hd,hw⟩ := hb _ hn
     refine ⟨w,hd,?_⟩
     simp only [lookup_resVarEq_restore,hy,if_false]
     exact hw
   · rw [he] at hn;cases hn
#print axioms read_dec
#print axioms read_assign
#print axioms read_seq
#print axioms read_ite
end InitECandidate.Solver.MemSafe.WalkCost
