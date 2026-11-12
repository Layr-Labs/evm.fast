import InitECandidate.Solver.MemSafe.Hooks.RecDefs
import InitECandidate.Solver.MemSafe.Hooks.ListFr
import InitECandidate.Solver.MemSafe.HtabEntries.JHooksG

/-!
# The frame driver's and the journal entries' requirements for record extensions

Generic in the record table `T` and the base family `B`:

* `relCfg_extR : RelCfg guestC B tEV Ref → RelCfg guestC (extR T B) tEV (refR T Ref)` (record
  invariants depend on heap objects only, `RecD.refHeap`);
* `rdHooks_extR : RdHooks B → RdHooks (extR T B)`;
* `newHooksL_extR : NewHooksL B → NewHooksL (extR T B)`;
* `jHooks_extR : JHooks B → JHooks (extR T B)` (the journal entries `state_restore`, `jset`,
  `jdel` then port by instantiating their `…G` versions, as `HtabEntries/JL.lean` does).
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.Spec

variable {σ : Type} {T : Bool → List RecD} {B : Hooks σ}

theorem relCfg_extR {Ref : Gam → State σ → Obj → BitVec 64 → Prop}
    (hB : RelCfg guestC B tEV Ref) : RelCfg guestC (extR T B) tEV (refR T Ref) := by
  refine ⟨shrinkR_extR hB.shrink, hB.heapPtrs, hB.globHeap, ?_⟩
  intro Γ s o b p hL ho hw href x hx hxb
  rcases href with href | ⟨e, he, het, hr⟩
  · exact hB.refCases Γ s o b p hL ho hw.1 href x hx hxb
  · obtain ⟨-, -, hew⟩ := hw.2 e he het
    exact Or.inl (e.refHeap Γ s.memory o b p hL ho het.symm hew hr x hx hxb)

theorem rdHooks_extR (hB : RdHooks B) : RdHooks (extR T B) where
  ret := by
    intro Γ s o o' ho' ht' j hj hf
    rcases hf with hf | hf
    · exact hB.ret Γ s o o' ho' ht' j hj hf
    · have hj' : j = 18 ∨ j = 19 ∨ j = 27 := by simpa using hj
      exact recFp_evck hf ho' (Or.inl ht')
        (by have := ev_size (recFp_obj hf).1 ho' ht'; omega) rfl
  b8 := fun Γ s o ht => ⟨hB.b8 Γ s o ht, recW_triv (by rw [ht]; decide)⟩

theorem newHooksL_extR (hB : NewHooksL B) : NewHooksL (extR T B) := by
  refine ⟨fun Γ s o p hL ho ht hsm => ⟨hB.ev Γ s o p hL ho ht hsm, recW_triv (by rw [ht]; decide)⟩,
    fun Γ s o h => ⟨hB.triv Γ s o h, recW_triv ?_⟩, lst_extR hB.lst⟩
  rcases h with h | h | h <;> rw [h] <;> decide

theorem jHooks_extR (hB : JHooks B) : JHooks (extR T B) := by
  refine ⟨lawful_extR hB.lawful, mono_extR hB.mono, htab_extR hB.htab,
    fun Γ s o hw ht => hB.jr Γ s o hw.1 ht,
    fun Γ s e hJ het hej n c hn hc hlt k hk o ho hf => ?_,
    fun Γ s s' o hw hm hd hbe hj => ⟨hB.jn Γ s s' o hw.1 hm hd hbe hj, ?_⟩,
    fun Γ s o ht => ⟨hB.b8 Γ s o ht, recW_triv (by rw [ht]; decide)⟩⟩
  · rcases hf with hf | hf
    · exact hB.notfp Γ s e hJ het hej n c hn hc hlt k hk o ho hf
    · obtain ⟨-, -, h1, h2⟩ := jrec_in hJ hn hc hlt hk
      exact recFp_not hf hJ.1 (by rw [het]; decide) h1 h2
  · show RecW (T s'.be) Γ s'.memory o
    rw [hm, hbe]
    exact hw.2

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.relCfg_extR
#print axioms InitECandidate.Solver.MemSafe.Hooks.jHooks_extR
