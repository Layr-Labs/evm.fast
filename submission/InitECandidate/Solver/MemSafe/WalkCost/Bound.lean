import InitECandidate.Solver.MemSafe.WalkCost.Output
set_option autoImplicit false
set_option maxHeartbeats 0
namespace InitECandidate.Solver.MemSafe.WalkCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
theorem read_break (n : MlS) : ReadOutput (σ := σ) n (.break : ProgHOL width) := by
 intro s hn
 rw [evaluateHOLFiniteState_eq_evaluate_def] at hn
 cases hn

theorem cost_walk_read {c : ExpHOL width} {body : ProgHOL width} {B : Nat} {n : MlS}
 {ok : MlS → Bool} {L : Nat} {lo : BitVec width}
 (hd : DomIn X.memaddrs lo L)
 (hb : Cost σ X body B) (hni : NI σ ok body)
 (hfr : Frame σ (fun y => y == n || !ok y) body) (hnc : NoCont σ body)
 (hokn : ok n = true) (hcr : rdOk ok c = true)
 (hcn : ∀ s : PanSemStateFiniteExact width σ,
   (∃ r, @evalHOLFinite width σ _ s (fun a => Classical.propDecidable (s.memaddrs a)) c = some r) →
   ∃ v, s.locals.lookup n = some (.val (.word v)))
 (hr : ReadOutput (σ := σ) n body) :
 Cost σ X (.while c body) ((L + 2) * (B + 1)) := by
 classical
 apply cost_while_walk_image hb hni hfr hnc L
   (fun s => imageEncoding L (memoryRead s.memory lo))
   (fun s => imageEncoding_inj L (memoryRead s.memory lo)) ?_ hokn hcr hcn
 intro s hs u v hn hv
 obtain ⟨w,hw,hl⟩ := hr (setVarHOLFinite n (.val (.word u)) s) hn
 have hlookup := wordLocal_eq_some hv
 have hm : s.memory w = .word v := by
   have hh := hl.symm.trans hlookup
   simpa only [setVarHOLFinite,Option.some.injEq,ValueHOL.val.injEq] using hh
 have hdom : X.memaddrs w := by
   rw [← hs.2.1]
   exact hw
 exact imageEncoding_lt L (memoryRead s.memory lo) v (memory_image hd hdom hm)
#print axioms cost_walk_read
end InitECandidate.Solver.MemSafe.WalkCost
