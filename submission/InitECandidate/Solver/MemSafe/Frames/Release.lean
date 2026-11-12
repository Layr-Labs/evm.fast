import InitECandidate.Solver.MemSafe.Frames.Lib
import InitECandidate.Solver.MemSafe.Shrink

/-!
# The release law for `finish_child`

`finish_child` ends with `scratch_release(CK_MARK)` and `frame_mem_release(CK_MEM_MARK)`. The
objects that survive are the `Above` ones (`relKeep`).

* `RelCfg C H tEV Ref`: the hook law `HooksShrinkR C H Ref`, `HeapPtrs C`, typed globals other
  than `ev` / `cur_cont` target heap types, and `refCases`: every dependency target of a hook is
  a heap object, the object itself, an EV record's stack / memory, or the array directly below
  (of an `adjTys` type).
* `relKeep_closed`: under `MarkOK`, the surviving objects are closed under the dependencies.
* **`G_release`**: `G` for the surviving objects after the two releases (memory unchanged,
  allocator pointers moved to the marks), given that `ev` / `cur_cont` point at surviving
  records.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

instance (C : Cfg) (mk mm : Nat) : DecidablePred (Above C mk mm) := fun o => by
  unfold Above; split <;> infer_instance

/-- The objects surviving the release to `mk` / `mm`. -/
def relKeep (C : Cfg) (mk mm : Nat) (Γ : Gam) : Gam := Γ.filter (fun o => decide (Above C mk mm o))

theorem mem_relKeep {C : Cfg} {mk mm : Nat} {Γ : Gam} {o : Obj} :
    o ∈ relKeep C mk mm Γ ↔ o ∈ Γ ∧ Above C mk mm o := by
  simp [relKeep]

/-- **What the release needs of the configuration and the hooks.** -/
structure RelCfg (C : Cfg) (H : Hooks σ) (tEV : Nat)
    (Ref : Gam → State σ → Obj → BitVec 64 → Prop) : Prop where
  shrink : HooksShrinkR C H Ref
  heapPtrs : HeapPtrs C
  globHeap : ∀ g k, C.GT.lookup g = some k → g ≠ nmEv → g ≠ nmCC → fkHeap C k = true
  refCases : ∀ (Γ : Gam) (s : State σ) (o : Obj) (b : BitVec 64) (p : Ptrs), Layout C p Γ →
    o ∈ Γ → H.wf Γ s o → Ref Γ s o b → ∀ x ∈ Γ, x.base = b →
      (C.ty x.ty).region = .heap ∨ x.base = o.base ∨
      (o.ty = tEV ∧ (b = fld s.memory o.base 8 ∨ b = fld s.memory o.base 24)) ∨
      (x.ty ∈ adjTys ∧ x.hi = o.lo)

theorem ptrsOf_parts {s : State σ} {p : Ptrs} (h : ptrsOf s = some p) :
    ∃ a b c, gword s gHeap = some a ∧ gword s gFrame = some b ∧ gword s gScratch = some c ∧
      p = ⟨a.toNat, b.toNat, c.toNat⟩ := by
  unfold ptrsOf at h
  split at h
  · rename_i a b c ha hb hc
    exact ⟨a, b, c, ha, hb, hc, (Option.some.inj h).symm⟩
  · cases h

theorem ptrsOf_of {s : State σ} {a b c : BitVec 64} (ha : gword s gHeap = some a)
    (hb : gword s gFrame = some b) (hc : gword s gScratch = some c) :
    ptrsOf s = some ⟨a.toNat, b.toNat, c.toNat⟩ := by
  unfold ptrsOf; rw [ha, hb, hc]

theorem layout_nodup {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) : Γ.Nodup := by
  rw [List.Nodup, List.pairwise_iff_getElem]
  intro i j hi hj hij he
  have h1 := (hL.1 _ (List.getElem_mem hj)).2.2.1
  rcases hL.2 i j hi hj (Nat.ne_of_lt hij) with h | h <;> rw [he] at h <;>
    unfold Obj.hi Obj.lo at h <;> omega

theorem above_heap {C : Cfg} {mk mm : Nat} {o : Obj} (h : (C.ty o.ty).region = .heap) :
    Above C mk mm o := by
  unfold Above; rw [h]; trivial

/-- The surviving objects are closed under the hook dependencies. -/
theorem relKeep_closed {C : Cfg} {H : Hooks σ} {tEV : Nat}
    {Ref : Gam → State σ → Obj → BitVec 64 → Prop} (hR : RelCfg C H tEV Ref) {Γ : Gam}
    {s : State σ} {mk mm : Nat} (hG : G C H Γ s) (hM : MarkOK C tEV Γ s mk mm) :
    ∀ o ∈ relKeep C mk mm Γ, ∀ x ∈ Γ, Ref Γ s o x.base → x ∈ relKeep C mk mm Γ := by
  intro o ho x hx href
  obtain ⟨ho, hab⟩ := mem_relKeep.mp ho
  obtain ⟨p, -, -, hL, -, -, -, hW⟩ := hG
  refine mem_relKeep.mpr ⟨hx, ?_⟩
  rcases hR.refCases Γ s o x.base p hL ho (hW o ho) href x hx rfl with h | h | ⟨het, h⟩ | ⟨ht, h⟩
  · exact above_heap h
  · rw [base_unique hL hx ho h]; exact hab
  · obtain ⟨⟨y, hy, hyb, hya⟩, ⟨z, hz, hzb, hza⟩⟩ := hM.evDeps o ho het hab
    rcases h with h | h
    · rw [base_unique hL hx hy (h.trans hyb.symm)]; exact hya
    · rw [base_unique hL hx hz (h.trans hzb.symm)]; exact hza
  · exact hM.adj o ho hab x hx ht h

/-- `G` after moving the allocator pointers (memory unchanged), when every object stays live. -/
theorem G_reptr {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hAG : Helpers.AllocGlobs C)
    {Γ : Gam} {s t : State σ} (hG : G C H Γ s) {p' : Ptrs} (hp' : ptrsOf t = some p')
    (hord' : p'.Ordered) (hlive : ∀ o ∈ Γ, (C.ty o.ty).region.Live p' o.lo o.size)
    (hm : t.memory = s.memory) (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hgo : ∀ g, g ≠ gHeap → g ≠ gFrame → g ≠ gScratch → t.globals.lookup g = s.globals.lookup g) :
    G C H Γ t := by
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hnot : ∀ g, (C.GT.lookup g).isSome ∨ g ∈ C.PG → g ≠ gHeap ∧ g ≠ gFrame ∧ g ≠ gScratch := by
    intro g hg
    have key : ∀ x, (x = gHeap ∨ x = gFrame ∨ x = gScratch) → g ≠ x := by
      intro x hx he
      subst he
      obtain ⟨h1, h2⟩ := hAG g hx
      rcases hg with hg | hg
      · rw [h2] at hg; exact absurd hg (by simp)
      · exact h1 hg
    exact ⟨key _ (Or.inl rfl), key _ (Or.inr (Or.inl rfl)), key _ (Or.inr (Or.inr rfl))⟩
  refine ⟨p', hp', hord', ⟨fun o ho => ?_, hL.2⟩, by rw [hm]; exact hF, by rw [hm]; exact hT, ?_, ?_⟩
  · obtain ⟨a1, a2, a3, a4, -⟩ := hL.1 o ho
    exact ⟨a1, a2, a3, a4, hlive o ho⟩
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    obtain ⟨n1, n2, n3⟩ := hnot g (Or.inl (by rw [hk]; rfl))
    refine ⟨v, ?_, hf⟩
    unfold gword at hv ⊢
    rw [hgo g n1 n2 n3]
    exact hv
  · intro o ho
    exact (hH.2 Γ s t o (hW o ho) hd hbe (fun a _ => by rw [hm])
      (fun g hg => let ⟨n1, n2, n3⟩ := hnot g (Or.inr hg); hgo g n1 n2 n3)).1

/-- **`G` after the release.** The state `t` has the memory of `s`, `scratch_ptr = mk`,
`frame_mem_ptr = mm`, the other globals of `s`; `ev` / `cur_cont` point at surviving records. -/
theorem G_release {C : Cfg} {H : Hooks σ} {tEV tCK : Nat}
    {Ref : Gam → State σ → Obj → BitVec 64 → Prop} (hR : RelCfg C H tEV Ref)
    (hD : DrvCfg C H tEV tCK) {Γ : Gam} {s t : State σ} {mk mm : Nat} (hG : G C H Γ s)
    (hM : MarkOK C tEV Γ s mk mm) (hm : t.memory = s.memory) (hd : t.memaddrs = s.memaddrs)
    (hbe : t.be = s.be) (hgs : t.globals.lookup gScratch = some (.val (.word (BitVec.ofNat 64 mk))))
    (hgf : t.globals.lookup gFrame = some (.val (.word (BitVec.ofNat 64 mm))))
    (hgo : ∀ g, g ≠ gScratch → g ≠ gFrame → t.globals.lookup g = s.globals.lookup g)
    (hev : ∀ o ∈ Γ, gword s nmEv = some o.base → o.ty = tEV → Above C mk mm o)
    (hcc : ∀ o ∈ Γ, gword s nmCC = some o.base → o.ty = tCK → Above C mk mm o) :
    G C H (relKeep C mk mm Γ) t := by
  have hH := hD.fc.hooks
  have hG0 := hG
  obtain ⟨p, hp, hord, hL, hF, -, hGl, -⟩ := hG0
  obtain ⟨hsp, hmf⟩ := hM.ptrs p hp
  have hmk := hM.mkB
  have hmm := hM.mmB
  have hO := hord
  unfold Ptrs.Ordered at hO
  have hs : scratchEnd < 2 ^ 64 := by decide
  have hmk64 : mk < 2 ^ 64 := by omega
  have hmm64 : mm < 2 ^ 64 := by omega
  let Γs := relKeep C mk mm Γ
  have hsub : ∀ o ∈ Γs, o ∈ Γ := fun o ho => (mem_relKeep.mp ho).1
  have hnd : Γs.Nodup := (layout_nodup hL).filter _
  -- the fields and globals over the surviving objects
  have hdrop : ∀ o' ∈ Γ, o' ∉ Γs → (C.ty o'.ty).region ≠ .heap := by
    intro o' ho' hn hr
    exact hn (mem_relKeep.mpr ⟨ho', above_heap hr⟩)
  have hFs : Fields C Γs s.memory := fields_shrink_nonheap hR.heapPtrs hF hsub hdrop
  have hGls : Globs C Γs s := by
    intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    refine ⟨v, hv, ?_⟩
    by_cases h1 : g = nmEv
    · subst h1
      rcases hD.evGT k hk with rfl | rfl
      · obtain ⟨o, ho, hb, ht⟩ := hf
        exact ⟨o, mem_relKeep.mpr ⟨ho, hev o ho (by rw [hb]; exact hv) ht⟩, hb, ht⟩
      · rcases hf with hf | ⟨o, ho, hb, ht⟩
        · exact Or.inl hf
        · exact Or.inr ⟨o, mem_relKeep.mpr ⟨ho, hev o ho (by rw [hb]; exact hv) ht⟩, hb, ht⟩
    by_cases h2 : g = nmCC
    · subst h2
      rcases hD.ccGT k hk with rfl | rfl
      · obtain ⟨o, ho, hb, ht⟩ := hf
        exact ⟨o, mem_relKeep.mpr ⟨ho, hcc o ho (by rw [hb]; exact hv) ht⟩, hb, ht⟩
      · rcases hf with hf | ⟨o, ho, hb, ht⟩
        · exact Or.inl hf
        · exact Or.inr ⟨o, mem_relKeep.mpr ⟨ho, hcc o ho (by rw [hb]; exact hv) ht⟩, hb, ht⟩
    · exact fits_shrink_nonheap (hR.globHeap g k hk h1 h2) hdrop hf
  have hGs : G C H Γs s :=
    G_shrink hG hsub hnd hFs hGls hR.shrink (relKeep_closed hR hG hM)
  -- the new allocator state
  obtain ⟨ha, hb, hc, hga, -, -, rfl⟩ := ptrsOf_parts hp
  let p' : Ptrs := ⟨ha.toNat, mm, mk⟩
  have hp' : ptrsOf t = some p' := by
    have hh : gword t gHeap = some ha := by
      unfold gword; rw [hgo gHeap (by decide) (by decide)]; exact hga
    have h1 : gword t gFrame = some (BitVec.ofNat 64 mm) := by unfold gword; rw [hgf]
    have h2 : gword t gScratch = some (BitVec.ofNat 64 mk) := by unfold gword; rw [hgs]
    rw [ptrsOf_of hh h1 h2, toNat_ofNat_lt hmm64, toNat_ofNat_lt hmk64]
  have hord' : p'.Ordered := by
    unfold Ptrs.Ordered
    simp only [p']
    simp only at hO hsp hmf
    omega
  refine G_reptr hH hD.allocG hGs hp' hord' (fun o ho => ?_) hm hd hbe
    (fun g h1 h2 h3 => hgo g h3 h2)
  obtain ⟨ho, hab⟩ := mem_relKeep.mp ho
  have hv := live_of hL ho
  unfold Above at hab
  cases hr : (C.ty o.ty).region with
  | heap =>
      have := hv.1 hr
      show heapBase ≤ o.lo ∧ o.lo + o.size ≤ ha.toNat
      simp only at this; lo_omega
  | fmem =>
      have := hv.2.1 hr
      rw [hr] at hab
      simp only at hab
      show heapEnd ≤ o.lo ∧ o.lo + o.size ≤ mm
      lo_omega
  | scratch =>
      have := hv.2.2 hr
      rw [hr] at hab
      simp only at hab
      show mk ≤ o.lo ∧ o.lo + o.size ≤ scratchEnd
      lo_omega

end InitECandidate.Solver.MemSafe.Frames
