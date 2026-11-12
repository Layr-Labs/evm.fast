import InitECandidate.Solver.MemSafe.Func
import InitECandidate.Solver.MemSafe.Alloc
import InitECandidate.Solver.Spec.Inv.BePreserved

/-!
# Built-in summaries: the allocators and `trap_with` (M1)

Plain summaries (`Summ`) for the checker's callee table, from the specifications proved in
`MemSafe/Alloc.lean`, for any configuration in which the allocator globals are untyped and
unprotected (`AllocCfg`) and any lawful hooks:

* `allocSig = ⟨[.any], [.freshArg 0 1 0], [], false⟩`: the result is a fresh 8-aligned block
  of `n` bytes outside `Γ'` (the caller makes it a temporary); `Γ` does not grow, so the
  allocators may run inside windows. `summ_alloc_heap`, `summ_frame_mem_alloc`,
  `summ_scratch_alloc`.
* `trapSig = ⟨[.any], [], [], false⟩`: `summ_trap_with` (never returns; memory and globals
  unchanged).
* `sumCore_keep`: the summary core of a call that keeps `Γ`, the memory and every
  non-allocator global, and moves the allocator monotonically.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem allocCfg_iff (C : Cfg) : AllocCfg C ↔
    (allocG.all fun g => C.GT.lookup g == none && !C.PG.contains g) = true := by
  unfold AllocCfg
  simp

theorem live_mono {p p' : Ptrs} (hm : p.Mono p') {rg : Region} {b n : Nat}
    (h : rg.Live p b n) : rg.Live p' b n := by
  unfold Ptrs.Mono at hm
  cases rg <;> simp only [Region.Live] at h ⊢ <;> omega

theorem layout_mono {C : Cfg} {p p' : Ptrs} {Γ : Gam} (hm : p.Mono p') (h : Layout C p Γ) :
    Layout C p' Γ :=
  ⟨fun o ho =>
    let H := h.1 o ho
    ⟨H.1, H.2.1, H.2.2.1, H.2.2.2.1, live_mono hm H.2.2.2.2⟩, h.2⟩

theorem live_alloc {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) {c : Nat} (h1 : o.lo ≤ c) (h2 : c < o.hi) : p.Allocated c := by
  have h := (hL.1 o ho).2.2.2.2
  unfold Obj.hi Obj.lo at *
  unfold Ptrs.Allocated
  unfold Ptrs.Ordered at hord
  generalize (C.ty o.ty).region = rg at h
  cases rg <;> simp only [Region.Live] at h <;> omega

/-- `G` survives a step keeping memory, `memaddrs`, `be` and the non-allocator globals,
moving the allocator monotonically. -/
theorem G_keep {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hAC : AllocCfg C) {Γ : Gam}
    {s t : State σ} (hG : G C H Γ s) {p p' : Ptrs} (hp : ptrsOf s = some p)
    (hp' : ptrsOf t = some p') (hord' : p'.Ordered) (hm : p.Mono p')
    (hmem : t.memory = s.memory) (hd : t.memaddrs = s.memaddrs) (hb : t.be = s.be)
    (hgl : ∀ g, g ∉ allocG → t.globals.lookup g = s.globals.lookup g) : G C H Γ t := by
  obtain ⟨p1, hp1, hord, hL, hF, hT, hGl, hW⟩ := hG
  rw [hp] at hp1
  cases hp1
  have hpg : ∀ g ∈ C.PG, t.globals.lookup g = s.globals.lookup g :=
    fun g hg => hgl g (fun ha => (hAC g ha).2 hg)
  refine ⟨p', hp', hord', layout_mono hm hL, hmem ▸ hF, hmem ▸ hT, ?_, ?_⟩
  · intro g k hk
    have hna : g ∉ allocG := fun ha => by rw [(hAC g ha).1] at hk; cases hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, by unfold gword; rw [hgl g hna]; exact hv, hf⟩
  · exact fun o ho => (hH.2 Γ s t o (hW o ho) hd hb (fun x _ => by rw [hmem]) hpg).1

/-- The summary core of a call keeping `Γ`. -/
theorem sumCore_keep {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hAC : AllocCfg C)
    {sg : Sig} {Γ : Gam} {s t : State σ} (hG : G C H Γ s) {p p' : Ptrs}
    (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p') (hord' : p'.Ordered)
    (hm : p.Mono p') (hmem : t.memory = s.memory) (hd : t.memaddrs = s.memaddrs)
    (hb : t.be = s.be) (hgl : ∀ g, g ∉ allocG → t.globals.lookup g = s.globals.lookup g)
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    (hret : ∀ v, r = .returned v → RetOK Γ p p' vs sg.ret v) (PW : BitVec 64 → Prop) :
    SumCore C H sg PW Γ s vs r t Γ p p' :=
  ⟨hp, hp', hm, ext_refl Γ, newFresh_refl Γ p p',
    G_keep hH hAC hG hp hp' hord' hm hmem hd hb hgl, fun a _ => by rw [hmem],
    fun g hg _ => hgl g (fun ha => (hAC g ha).2 hg), fun _ => newFresh_refl Γ p p, hret⟩

theorem ptrsOf_eq_of_globals {s t : State σ} (h : t.globals = s.globals) :
    ptrsOf t = ptrsOf s := by
  unfold ptrsOf gword; rw [h]

/-! ## `trap_with` -/

def trapSig : Sig := ⟨[.any], [], [], false⟩

theorem summ_trap_with (hC : X.code.lookup = guestCode) {C : Cfg} {H : Hooks σ}
    (hH : HooksLawful C H) (hAC : AllocCfg C) : Summ σ X C H (nm "trap_with") trapSig := by
  intro vs body callee rs hl s hs hloc r hr hgood Γ hG _ _
  have htr := funSpec_trap_with hC vs body callee rs hl s hs hloc r hr hgood
  obtain ⟨-, hmem, hgl⟩ := id htr
  obtain ⟨p, hp, hord, -⟩ := id hG
  have hctx := inCtx_eval hs body
  have hp' : ptrsOf (evaluateHOLFiniteState s body).2 = some p := by
    rw [ptrsOf_eq_of_globals hgl]; exact hp
  refine ⟨Γ, p, p, sumCore_keep hH hAC hG hp hp' hord (mono_refl p) hmem
    (hctx.2.1.trans hs.2.1.symm) (Inv.be_preserved s body) (fun g _ => by rw [hgl]) ?_ _,
    trivial⟩
  intro v hv
  subst hv
  exact (TrapR.not_returned htr).elim

/-! ## The allocators -/

def allocSig : Sig := ⟨[.any], [.freshArg 0 1 0], [], false⟩

theorem global_mem (rg : Region) : rg.global ∈ allocG := by
  cases rg <;> simp [allocG, Region.global]

/-- A block allocated between `p` and `p'` is fresh and outside `Γ`. -/
theorem fresh_block {C : Cfg} {Γ : Gam} {p p' : Ptrs} (hord : p.Ordered)
    (hL : Layout C p Γ) {rg : Region} {q : BitVec 64} {n : Nat} (hq8 : q.toNat % 8 = 0)
    (hlive : rg.Live p' q.toNat n)
    (hfree : ∀ a, q.toNat ≤ a → a < q.toNat + n → ¬ p.Allocated a) : FreshBuf Γ p p' q n := by
  refine ⟨hq8, fun c ⟨hc8, hc1, hc2⟩ => ?_⟩
  have hqc : q.toNat ≤ c.toNat := by omega
  have hna := hfree c.toNat hqc hc2
  refine ⟨?_, fun ⟨o, ho, hlo, hhi⟩ => hna (live_alloc hord hL ho hlo hhi)⟩
  unfold Ptrs.Allocated at hna
  unfold Fresh
  unfold Ptrs.Ordered at hord
  cases rg <;> simp only [Region.Live] at hlive <;> omega

theorem summ_alloc {fn : MlS} {rg : Region} (hA : AllocSpec σ X fn rg) {x : MlS}
    {bd : ProgHOL 64} {rsh : ShapeHOL} (hcode : X.code.lookup fn = some ([(x, .one)], bd, rsh))
    {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hAC : AllocCfg C) :
    Summ σ X C H fn allocSig := by
  intro vs body callee rs hl s hs hloc r hr hgood Γ hG _ _
  obtain ⟨-, -, hvl, hbind⟩ := lookupCode_gen hcode hl
  have hv1 : vs.length = 1 := by simpa using hvl.symm
  obtain ⟨v0, rfl⟩ := List.length_eq_one_iff.mp hv1
  obtain ⟨-, hsh⟩ := hbind 0 (by simp) (by simp)
  obtain ⟨n, rfl⟩ := val_of_shapeEq_one hsh
  obtain ⟨p, hp, hord, hL, -⟩ := id hG
  obtain ⟨hmem, hgl, p', hp', hord', hm, hret⟩ :=
    hA [.val (.word n)] body callee rs hl s hs hloc r hr hgood n p rfl hp hord
  have hctx := inCtx_eval hs body
  refine ⟨Γ, p, p', sumCore_keep hH hAC hG hp hp' hord' hm hmem
    (hctx.2.1.trans hs.2.1.symm) (Inv.be_preserved s body)
    (fun g hg => hgl g (fun he => hg (he ▸ global_mem rg))) ?_ _, trivial⟩
  intro v hv
  obtain ⟨q, rfl, hq8, hlive, hfree⟩ := hret v hv
  intro i r' w hr' hw
  cases i with
  | zero =>
      simp only [allocSig, List.getElem?_cons_zero, Option.some.injEq] at hr'
      subst hr'
      simp only [flattenHOL, List.getElem?_cons_zero, Option.some.injEq,
        HolWordLab.word.injEq] at hw
      subst hw
      refine ⟨n, rfl, ?_⟩
      simpa using fresh_block hord hL hq8 hlive hfree
  | succ i => simp [allocSig] at hr'

theorem summ_alloc_heap (hC : X.code.lookup = guestCode) {C : Cfg} {H : Hooks σ}
    (hH : HooksLawful C H) (hAC : AllocCfg C) : Summ σ X C H (nm "alloc") allocSig :=
  summ_alloc (allocSpec_alloc hC) (by rw [hC]; exact AllocImpl.code_alloc) hH hAC

theorem summ_frame_mem_alloc (hC : X.code.lookup = guestCode) {C : Cfg} {H : Hooks σ}
    (hH : HooksLawful C H) (hAC : AllocCfg C) :
    Summ σ X C H (nm "frame_mem_alloc") allocSig :=
  summ_alloc (allocSpec_frame_mem_alloc hC) (by rw [hC]; exact AllocImpl.code_frame_mem_alloc)
    hH hAC

theorem summ_scratch_alloc (hC : X.code.lookup = guestCode) {C : Cfg} {H : Hooks σ}
    (hH : HooksLawful C H) (hAC : AllocCfg C) :
    Summ σ X C H (nm "scratch_alloc") allocSig :=
  summ_alloc (allocSpec_scratch_alloc hC) (by rw [hC]; exact code_scratch_alloc) hH hAC

/-- The built-in table entries. -/
def builtinTab : SumTab :=
  [(nm "trap_with", trapSig), (nm "alloc", allocSig), (nm "frame_mem_alloc", allocSig),
   (nm "scratch_alloc", allocSig)]

theorem builtinTab_sound (hC : X.code.lookup = guestCode) {C : Cfg} {H : Hooks σ}
    (hH : HooksLawful C H) (hAC : AllocCfg C) : TabSound σ X C H builtinTab := by
  intro f sg h
  simp only [builtinTab, List.mem_cons, Prod.mk.injEq, List.not_mem_nil, or_false] at h
  rcases h with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  · exact summ_trap_with hC hH hAC
  · exact summ_alloc_heap hC hH hAC
  · exact summ_frame_mem_alloc hC hH hAC
  · exact summ_scratch_alloc hC hH hAC

end InitECandidate.Solver.MemSafe
