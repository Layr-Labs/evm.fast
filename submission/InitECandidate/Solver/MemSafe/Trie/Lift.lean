import InitECandidate.Solver.MemSafe.Trie.Bridge
import InitECandidate.Solver.MemSafe.Trie.MptRootG
import InitECandidate.Solver.MemSafe.WaveHelpers.Keccak
import InitECandidate.Solver.MemSafe.Builtin

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# From a footprint to `SumCore`

`lift_footX`: a state `t` reached from `s` by a `FootX` step (cache cells of nodes, keccak buffers, unallocated
cells, extra buffer cells) is a `SumCore` step with `Γ' = Γ`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.Band (NdOf nodeTys node_facts)

variable {σ : Type} {X : Ctx 64}

theorem scell_cache {Γ : Gam} {s : State σ} (hG : G guestC (HR (σ := σ)) Γ s) {b a : BitVec 64}
    (hb : NdOf Γ b) (hc : CacheCell b a) : SCell guestC Γ a := by
  obtain ⟨o, ho, rfl, ht⟩ := hb
  obtain ⟨-, -, -, -, -, hk⟩ := node_facts hG ho ht
  have hsz : 32 ≤ o.size := by
    rcases hk with ⟨-, -, h⟩ | ⟨-, -, h⟩ | ⟨-, -, h, -⟩ | ⟨-, -, h, -⟩ <;> omega
  have hsl : ∀ j, 1 ≤ j → j ≤ 3 → (guestC.ty o.ty).slot j = .scalar := by
    intro j h1 h2
    simp only [nodeTys, List.mem_cons, List.not_mem_nil, or_false] at ht
    rcases ht with h | h | h | h <;> rw [h] <;> interval_cases j <;> decide
  rcases hc with rfl | rfl | rfl
  · exact ⟨o, ho, 1, by unfold Obj.HasSlot; omega, hsl 1 le_rfl (by omega), rfl⟩
  · exact ⟨o, ho, 2, by unfold Obj.HasSlot; omega, hsl 2 (by omega) (by omega), rfl⟩
  · exact ⟨o, ho, 3, by unfold Obj.HasSlot; omega, hsl 3 (by omega) le_rfl, rfl⟩

theorem scell_kbuf {Γ : Gam} {s : State σ} (hG : G guestC (HR (σ := σ)) Γ s) {a : BitVec 64}
    (hk : KBuf s a) (h8 : a.toNat % 8 = 0) : SCell guestC Γ a := by
  rcases hk with ⟨W, hW, h1, h2⟩ | ⟨W, hW, h1, h2⟩
  · obtain ⟨ks, hks1, -, -, hc⟩ := WaveHelpers.scell_of_globA hG WaveHelpers.scalarGlob_kst
    rw [hW] at hks1
    cases hks1
    exact hc a (WaveHelpers.overlap_of_in h8 h1 h2)
  · obtain ⟨kp, hkp1, -, -, hc⟩ := WaveHelpers.scell_of_globA hG WaveHelpers.scalarGlob_kpad
    rw [hW] at hkp1
    cases hkp1
    exact hc a (WaveHelpers.overlap_of_in h8 h1 h2)

theorem notInObj_of_unalloc {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {a : Nat} (h : ¬ p.Allocated a) : ¬ InObj Γ a := by
  rintro ⟨o, ho, h1, h2⟩
  exact h (live_alloc hord hL ho h1 h2)

/-- `G` under a footprint step that may move the allocator monotonically. -/
theorem G_foot {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C) {Γ : Gam}
    {s t : State σ} (hG : G C H Γ s) {p p' : Ptrs} (hp' : ptrsOf t = some p') (hord' : p'.Ordered)
    (hm : p.Mono p') (hp : ptrsOf s = some p)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) (hAC : AllocCfg C)
    (hgl : ∀ g, g ∉ allocG → t.globals.lookup g = s.globals.lookup g) {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R s.memory t.memory) (hR : ∀ a, R a → BufCell C Γ a) : G C H Γ t := by
  obtain ⟨p1, hp1, hord, hL, hF, hTg, hGl, hW⟩ := hG
  rw [hp] at hp1
  cases hp1
  have hpg : ∀ g ∈ C.PG, t.globals.lookup g = s.globals.lookup g :=
    fun g hg => hgl g (fun ha => (hAC g ha).2 hg)
  have keep : ∀ o ∈ Γ, ∀ k, o.HasSlot k → (C.ty o.ty).slot k ≠ .scalar →
      t.memory (o.cell k) = s.memory (o.cell k) := by
    intro o ho k hk hns
    apply hmod
    intro hr
    rcases hR _ hr with ⟨o', ho', k', hk', hsc, he⟩ | hn
    · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
      exact hns hsc
    · exact hn (cell_in hord hL ho hk)
  refine ⟨p', hp', hord', layout_mono hm hL, ?_, ?_, ?_, ?_⟩
  · intro o ho k hk
    by_cases hsc : (C.ty o.ty).slot k = .scalar
    · rw [hsc]; trivial
    · have hr : rd t.memory (o.cell k) = rd s.memory (o.cell k) := by
        rw [rd, rd, keep o ho k hk hsc]
      rw [hr]
      exact hF o ho k hk
  · intro o ho tag ht
    obtain ⟨h0, hc⟩ := slot0 hL ho
    have e := keep o ho 0 h0 (hT o.ty tag ht)
    rw [hc] at e
    have hr : rd t.memory o.base = rd s.memory o.base := by rw [rd, rd, e]
    rw [hr]
    exact hTg o ho tag ht
  · intro g k hk
    have hna : g ∉ allocG := fun ha => by rw [(hAC g ha).1] at hk; cases hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    refine ⟨v, ?_, hf⟩
    unfold gword at hv ⊢
    rw [hgl g hna]
    exact hv
  · intro o ho
    refine (hH.2 Γ s t o (hW o ho) hd hbe (fun a ha => ?_) hpg).1
    obtain ⟨o', ho', k, hk, hprot, rfl⟩ := hH.1 Γ s o a ho (hW o ho) ha
    exact keep o' ho' k hk (by rw [hprot]; decide)

theorem scell_wcell {C : Cfg} {Γ : Gam} {a : BitVec 64} (h : SCell C Γ a) : WCell C Γ a := by
  obtain ⟨o, ho, k, hk, hsc, he⟩ := h
  exact ⟨o, ho, k, hk, by rw [hsc]; decide, he⟩

/-- **A footprint step is a `SumCore` step** with `Γ' = Γ`. -/
theorem sumCore_of_footX (hF : FoldOK σ X guestC (HR (σ := σ))) {Γ : Gam} {s t : State σ} {p : Ptrs}
    {Ex : BitVec 64 → Prop} {sg : Sig} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {PW : BitVec 64 → Prop} (hG : G guestC (HR (σ := σ)) Γ s) (hp : ptrsOf s = some p)
    (hFt : FootX (NdOf Γ) Ex s t p) (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hal : ∀ a, t.memory a ≠ s.memory a → a.toNat % 8 = 0)
    (hEx : ∀ a, Ex a → BufCell guestC Γ a ∧ ArgCells sg.params vs a) (hsg : sg.ret = []) :
    ∃ p', ptrsOf t = some p' ∧ SumCore guestC (HR (σ := σ)) sg PW Γ s vs r t Γ p p' := by
  obtain ⟨hg, p', hq, hqo, hm, hw⟩ := hFt
  have hG0 := hG
  obtain ⟨p1, hp1, hord, hL, -⟩ := hG0
  rw [hp] at hp1
  cases hp1
  have hgl : ∀ g, g ∉ allocG → t.globals.lookup g = s.globals.lookup g := fun g hna =>
    hg g (fun h => hna (by rw [h]; simp [allocG])) (fun h => hna (by rw [h]; simp [allocG]))
  have hmod : ModifiesOnly (fun a => t.memory a ≠ s.memory a ∧ a.toNat % 8 = 0) s.memory t.memory :=
    fun a hn => by
      by_contra h
      exact hn ⟨h, hal a h⟩
  have hR : ∀ a, (t.memory a ≠ s.memory a ∧ a.toNat % 8 = 0) → BufCell guestC Γ a := by
    rintro a ⟨ha, h8⟩
    rcases hw a ha with ⟨b, hb, hc⟩ | hk | hu | hx
    · exact Or.inl (scell_cache hG hb hc)
    · exact Or.inl (scell_kbuf hG hk h8)
    · exact Or.inr (notInObj_of_unalloc hord hL hu)
    · exact (hEx a hx).1
  have hGt := G_foot hF.hH Helpers.tagSlots_guestC hG hq hqo hm hp hd hbe hF.hAC hgl hmod hR
  refine ⟨p', hq, hp, hq, hm, ext_refl Γ, newFresh_refl Γ p p', hGt, ?_, ?_, fun _ => newFresh_refl Γ p p, ?_⟩
  · intro a hn
    by_contra hne
    apply hn
    rcases hw a hne with ⟨b, hb, hc⟩ | hk | hu | hx
    · exact Or.inl (scell_wcell (scell_cache hG hb hc))
    · exact Or.inl (scell_wcell (scell_kbuf hG hk (hal a hne)))
    · exact Or.inr (Or.inr (Or.inl hu))
    · exact Or.inr (Or.inl (hEx a hx).2)
  · intro g hg' _
    exact hgl g (fun ha => (hF.hAC g ha).2 hg')
  · intro v _ i rt w hrt
    rw [hsg] at hrt
    simp at hrt

end InitECandidate.Solver.MemSafe.Trie
