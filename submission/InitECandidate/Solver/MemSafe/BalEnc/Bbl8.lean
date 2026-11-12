import InitECandidate.Solver.MemSafe.BalEnc.Bbl7

set_option autoImplicit false

/-!
# `build_block_access_list_rlp`: the post, the tail, and the assembly of the two phases
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Bal
open InitECandidate.Solver.MemSafe.Aw (Below G_heapOnly AwInv AwE newFresh_of_sub mono_trans' allocated_mono')

variable {σ : Type}

/-- **The postcondition** of `build_block_access_list_rlp` for entry data `(s0, Γ0, p0)`. -/
def BblPost (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ (Γ' : Gam) (p' : Ptrs) (h1 : Nat),
    G guestC (guestHooksR (σ := σ)) Γ' t ∧ ptrsOf t = some p' ∧ KeepH guestC Γ0 Γ' s0 t ∧ p0.Mono p' ∧
    p0.hp ≤ h1 ∧ h1 ≤ p'.hp ∧ h1 % 8 = 0 ∧
    ModifiesOnly (fun x => h1 ≤ x.toNat ∨ BalPW s0 Γ0 x ∨ WCell guestC Γ0 x ∨ ¬ p0.Allocated x.toNat)
      s0.memory t.memory ∧
    (∀ g ∈ Bal.bal4, t.globals.lookup g = s0.globals.lookup g) ∧
    (∀ g ∈ guestC.PG, t.globals.lookup g = s0.globals.lookup g) ∧
    ∃ S L : BitVec 64, v = .rStruct [.val (.word S), .val (.word L)] ∧ h1 ≤ S.toNat ∧
      S.toNat + L.toNat ≤ Aw.B0 ∧ 1 ≤ L.toNat

theorem bblPost_locals (hH : HooksLawful guestC (guestHooksR (σ := σ))) {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} :
    ∀ r t L, BblPost s0 Γ0 p0 r t → BblPost s0 Γ0 p0 r { t with locals := L } := by
  intro r t L h v hv
  obtain ⟨Γ', p', h1, hG, hp, hk, hm, a1, a2, a3, hmod, hb, hpg, hr⟩ := h v hv
  exact ⟨Γ', p', h1, G_congr hH rfl rfl rfl rfl hG, hp, hk, hm, a1, a2, a3, hmod, hb, hpg, hr⟩

theorem keepH_filter {Γ Γ' : Gam} {s t : State σ} :
    KeepH guestC (Γ.filter fun o => (guestC.ty o.ty).region == .heap) Γ' s t → KeepH guestC Γ Γ' s t := by
  intro h p p' hp hp' hord
  obtain ⟨a1, a2, a3⟩ := h p p' hp hp' hord
  refine ⟨a1, fun x hx hr => a2 x (by simp [List.mem_filter, hx, hr]) hr, fun o ho hr a h1 h2 => ?_⟩
  rcases a3 o ho hr a h1 h2 with ⟨o0, ho0, hb, ht, h3, h4⟩ | h
  · exact Or.inl ⟨o0, (List.mem_filter.mp ho0).1, hb, ht, h3, h4⟩
  · exact Or.inr h


/-- The heap-region objects of a typing. -/
def heapOf (Γ : Gam) : Gam := Γ.filter fun o => (guestC.ty o.ty).region == .heap

theorem mem_heapOf {Γ : Gam} {o : Obj} : o ∈ heapOf Γ ↔ o ∈ Γ ∧ (guestC.ty o.ty).region = .heap := by
  simp [heapOf, List.mem_filter]

/-- A cell of a current object is a cell of an entry object, or unallocated at entry. -/
theorem foot_back {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {s : State σ}
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw bbc Γ0 s0 p0) Γ s) {x : BitVec 64}
    (hx : WCell guestC (heapOf Γ) x ∨ LaCell (heapOf Γ) x) :
    BalPW s0 Γ0 x ∨ WCell guestC Γ0 x ∨ ¬ p0.Allocated x.toNat := by
  rcases hx with ⟨A, hA, k, hk, hne, rfl⟩ | ⟨A, hA, hl, k, hk, rfl⟩
  · rcases Inc.back_cell hord0 hL0 hT (mem_heapOf.1 hA).1 hk with ⟨o0, ho0, hb, ht, hk0, he⟩ | hna
    · exact Or.inr (Or.inl ⟨o0, ho0, k, hk0, by rw [ht]; exact hne, he⟩)
    · exact Or.inr (Or.inr hna)
  · rcases Inc.back_cell hord0 hL0 hT (mem_heapOf.1 hA).1 hk with ⟨o0, ho0, hb, ht, hk0, he⟩ | hna
    · exact Or.inl (Or.inr (Or.inr ⟨o0, ho0, by rw [ht]; exact hl, k, hk0, he⟩))
    · exact Or.inr (Or.inr hna)

theorem balPW_of_cpw {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {x : BitVec 64} (h : cpw bbc Γ0 s0 p0 x) :
    BalPW s0 Γ0 x ∨ ¬ p0.Allocated x.toNat := by
  rcases h with ⟨-, h | ⟨-, h⟩⟩ | h
  · exact Or.inl (Or.inl (capPW_bbc h))
  · exact Or.inl (Or.inr h)
  · exact Or.inr h


/-- **From the end of the above-writer to the post.** -/
theorem bbl_final {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} (hp0 : ptrsOf s0 = some p0)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {Γ : Gam} {s : State σ} {p1 : Ptrs}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw bbc Γ0 s0 p0) Γ s)
    (hp1 : ptrsOf s = some p1) (hb4s : ∀ g ∈ Bal.bal4, s.globals.lookup g = s0.globals.lookup g)
    {t : State σ}
    (hinv : AwInv (⟨guestCS, nwH (guestHooksR (σ := σ)), [], s, heapOf Γ, p1, p1.hp⟩ : AwE σ) t)
    {v : ValueHOL 64}
    (hret : BblRet (⟨guestCS, nwH (guestHooksR (σ := σ)), [], s, heapOf Γ, p1, p1.hp⟩ : AwE σ) v) :
    ∃ (Γ' : Gam) (p' : Ptrs) (h1 : Nat),
      G guestC (guestHooksR (σ := σ)) Γ' t ∧ ptrsOf t = some p' ∧ KeepH guestC Γ0 Γ' s0 t ∧ p0.Mono p' ∧
      p0.hp ≤ h1 ∧ h1 ≤ p'.hp ∧ h1 % 8 = 0 ∧
      ModifiesOnly (fun x => h1 ≤ x.toNat ∨ BalPW s0 Γ0 x ∨ WCell guestC Γ0 x ∨ ¬ p0.Allocated x.toNat)
        s0.memory t.memory ∧
      (∀ g ∈ Bal.bal4, t.globals.lookup g = s0.globals.lookup g) ∧
      (∀ g ∈ guestC.PG, t.globals.lookup g = s0.globals.lookup g) ∧
      ∃ S L : BitVec 64, v = .rStruct [.val (.word S), .val (.word L)] ∧ h1 ≤ S.toNat ∧
        S.toNat + L.toNat ≤ Aw.B0 ∧ 1 ≤ L.toNat := by
  obtain ⟨Γ2, p2, hG2, hp2, hE, hS, hB, hMono, hmod2, hgl⟩ := hinv
  have hGc2 : G guestC (guestHooksR (σ := σ)) Γ2 t := g_iff.1 hG2
  obtain ⟨q1, hq1, hord1, hL1, -⟩ := Struct.trk_G hT
  rw [hp1] at hq1
  cases hq1
  obtain ⟨q2, hq2, hord2, hL2, -⟩ := hGc2
  rw [hp2] at hq2
  cases hq2
  obtain ⟨pT, hpT, hm, hxE, hnf, hG1, hmod1, hpg1, hd1, hbe1⟩ := hT
  rw [hp1] at hpT
  cases hpT
  have hK1 := keepH_of_run hp0 hp1 hm hxE hnf hL1 hord1
  have hK2 := keepH_of_run hp1 hp2 hMono hE (newFresh_of_sub hS) hL2 hord2
  have hKK := KeepH.trans hK1 (keepH_filter hK2) hp1 hord1
  have hm2 : p0.Mono p2 := mono_trans' hm hMono
  have hh : (⟨guestCS, nwH (guestHooksR (σ := σ)), [], s, heapOf Γ, p1, p1.hp⟩ : AwE σ).h0 = p1.hp := rfl
  refine ⟨Γ2, p2, p1.hp, g_iff.1 hG2, hp2, hKK, hm2, hm.1, hMono.1, hord1.2.2.2.2.2.1, ?_, ?_, ?_, ?_⟩
  · -- the memory footprint
    intro x hx
    have hnR : ¬ (p1.hp ≤ x.toNat ∨ BalPW s0 Γ0 x ∨ WCell guestC Γ0 x ∨ ¬ p0.Allocated x.toNat) := hx
    have e2 : ∀ y, ¬ (p1.hp ≤ y.toNat ∨ BalPW s0 Γ0 y ∨ WCell guestC Γ0 y ∨ ¬ p0.Allocated y.toNat) →
        t.memory y = s.memory y := by
      intro y hy
      apply hmod2 y
      intro hmem
      apply hy
      rcases hmem with h | h | h
      · exact Or.inl h
      · rcases wcell_cs_back h with h' | h'
        · exact Or.inr (foot_back hord0 hL0 ⟨p1, hp1, hm, hxE, hnf, hG1, hmod1, hpg1, hd1, hbe1⟩ (Or.inl h'))
        · exact Or.inr (foot_back hord0 hL0 ⟨p1, hp1, hm, hxE, hnf, hG1, hmod1, hpg1, hd1, hbe1⟩ (Or.inr h'))
      · exact Or.inr (Or.inr (Or.inr (fun hal => h (allocated_mono' hm hal))))
    have e1 : ∀ y, ¬ (p1.hp ≤ y.toNat ∨ BalPW s0 Γ0 y ∨ WCell guestC Γ0 y ∨ ¬ p0.Allocated y.toNat) →
        s.memory y = s0.memory y := by
      intro y hy
      apply hmod1 y
      intro hmem
      apply hy
      rcases hmem with h | h | h
      · exact Or.inr (Or.inr (Or.inl h))
      · exact Or.inr (Or.inr (Or.inr h))
      · rcases balPW_of_cpw h with h' | h'
        · exact Or.inr (Or.inl h')
        · exact Or.inr (Or.inr (Or.inr h'))
    rw [e2 x hnR, e1 x hnR]
  · intro g hg
    rw [hgl g (by simp only [guestCS, List.mem_append]; exact Or.inr hg) (by simp)]
    exact hb4s g hg
  · intro g hg
    rw [hgl g (by simp only [guestCS, List.mem_append]; exact Or.inl hg) (by simp)]
    exact (hpg1 g hg).symm ▸ rfl
  · obtain ⟨S, L, hv, h1, h2, h3⟩ := hret
    exact ⟨S, L, hv, h1, h2, h3⟩

end InitECandidate.Solver.MemSafe.BalEnc
