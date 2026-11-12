import InitECandidate.Solver.MemSafe.Eb.MzHead
import InitECandidate.Solver.MemSafe.Eb.Rd

/-!
# `execute_block`: `alloc` with immediate adoption of the block as a block object

`hdecAllocAdopt`: `var rn = alloc(e); k` where the block (`n` bytes, `n` a known multiple of 8) joins the typing as an object of
a block type (`tBOS` / `tBO`, all `prot`). `hcallAllocAdoptG`: `g = alloc(e);` for a typed global `g`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.HtabEntries

variable {σ : Type}

theorem stepD_snoc {Γ Γ' : Gam} {p p' : Ptrs} {u t : State σ} {x : Obj}
    (hs : StepD Γ p u Γ' p' t) (hG'' : G guestC (HR σ) (Γ' ++ [x]) t)
    (hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh (Exb.gp0 p) p' a) :
    StepD Γ p u (Γ' ++ [x]) p' t := by
  refine ⟨hs.hp, hs.hp', hs.mono, ?_, ?_, hs.hG, hG''⟩
  · intro o ho
    obtain ⟨o', ho', h⟩ := hs.ext o ho
    exact ⟨o', List.mem_append_left _ ho', h⟩
  · intro o ho a h1 h2
    rcases List.mem_append.mp ho with ho | ho
    · exact hs.nf o ho a h1 h2
    · have : o = x := List.mem_singleton.mp ho
      subst this
      exact Or.inr (hfr a h1 h2)

theorem ebRun_stepD {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ Γ' : Gam} {u t : State σ} {p p' : Ptrs}
    (h : EbRun Γ0 s0 p0 Γ u p) (hs : StepD Γ p u Γ' p' t) (hJ : JrNZ t) (hE : EvCc t) :
    EbRun Γ0 s0 p0 Γ' t p' :=
  ⟨ebRun_ptrs0 h, hs.hp', mono_g_trans (ebRun_mono h) hs.mono, ext_trans (ebRun_ext h) hs.ext,
    newFresh_trans_g (ebRun_ord h) (ordered_of_G hs.hG' hs.hp') (ebRun_mono h) (stepD_layout hs) (ebRun_nf h) hs.nf,
    hs.hG', hJ, hE.1, hE.2, ebRun_ord0 h⟩

theorem retok_alloc {Γ' : Gam} {p p' : Ptrs} {n q : BitVec 64}
    (h : RetOK Γ' p p' [.val (.word n)] [.freshArg 0 1 0] (.val (.word q))) : FreshBuf Γ' p p' q n.toNat := by
  have := h 0 (.freshArg 0 1 0) q rfl (by simp [flattenHOL])
  obtain ⟨x, hx, hf⟩ := this
  simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
  subst hx
  simpa using hf

theorem gword_setG_self {s : State σ} {g : MlS} {w : BitVec 64} :
    gword (setKvarHOLFinite .global g (.val (.word w)) s) g = some w := by
  unfold gword; rw [setG_self]

/-- Setting a typed pointer global to the base of an object of its type keeps `G`. -/
theorem G_setGlobPtr {Γ : Gam} {u : State σ} (hG : G guestC (HR σ) Γ u) {g : MlS} {k : FK}
    (hgt : guestC.GT.lookup g = some k) (hpg : g ∉ guestC.PG) (hne : g ≠ gHeap ∧ g ≠ gFrame ∧ g ≠ gScratch)
    {w : BitVec 64} (hw : Fits Γ k w) :
    G guestC (HR σ) Γ (setKvarHOLFinite .global g (.val (.word w)) u) := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hptr : ptrsOf (setKvarHOLFinite .global g (.val (.word w)) u) = ptrsOf u := by
    unfold ptrsOf
    rw [gword_setG_ne (v := .val (.word w)) hne.1.symm, gword_setG_ne (v := .val (.word w)) hne.2.1.symm,
      gword_setG_ne (v := .val (.word w)) hne.2.2.symm]
  refine ⟨p, hptr.trans hps, hord, hL, hF, hT, ?_, ?_⟩
  · intro g' k' hk
    by_cases hg : g' = g
    · subst hg
      rw [hgt] at hk
      cases hk
      exact ⟨w, gword_setG_self, hw⟩
    · obtain ⟨w2, hw2, hf⟩ := hGl g' k' hk
      exact ⟨w2, (gword_setG_ne (v := .val (.word w)) hg).trans hw2, hf⟩
  · intro o ho
    refine ((Hooks.guestHooksR_lawful (σ := σ)).2 Γ u (setKvarHOLFinite .global g (.val (.word w)) u) o (hW o ho)
      rfl rfl (fun a _ => rfl) ?_).1
    intro g' hg'
    exact setG_ne (fun h => hpg (h ▸ hg'))

section alloc
variable {E : EbE σ} {En : Env} {S : FS}

/-- The facts an adopted fresh block brings: the object, and its base differs from every known object base. -/
def AdoptNF (S : FS) (w : BitVec 64) (ty n : Nat) : FS :=
  fun f => f = Fct.obj w ty n ∨ (∃ b ty' n', S (Fct.obj b ty' n') ∧ f = Fct.prop (b ≠ w)) ∨
    (∃ g b ty', S (Fct.gobj g b ty') ∧ f = Fct.prop (b ≠ w)) ∨
    f = Fct.prop (∀ y : BitVec 64, (∃ f0, S f0 ∧ f0.reads y) → ¬ (w.toNat ≤ y.toNat ∧ y.toNat < w.toNat + n))

theorem alloc_args {s : State σ} {e : ExpHOL 64} {n : BitVec 64} {vs : List (ValueHOL 64)}
    (he : EvI s e (.val (.word n))) (hvs : evs s [e] = some vs) : vs = [.val (.word n)] := by
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  rw [evs_nil] at hr1
  cases hr1
  rw [he _ h1]

abbrev AllocSig : Sig := ⟨[.any], [.freshArg 0 1 0], [], false⟩

/-- The relation of an `alloc` return: the table summary and the allocator spec. -/
def AllocRel : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop := fun vs s r t =>
  CRel (σ := σ) (fun vs _ Γ p => ArgsOK guestC Γ p AllocSig.params vs) (fun _ _ _ _ => False)
    (fun vs _ Γ p v _ Γ' p' => RetOK Γ' p p' vs AllocSig.ret v ∧ (AllocSig.grows = false → NewFresh Γ Γ' p p))
    vs s r t ∧
  (Good (some r) → ∀ n p, vs = [.val (.word n)] → ptrsOf s = some p → p.Ordered →
    t.memory = s.memory ∧ (∀ g, g ≠ gHeap → t.globals.lookup g = s.globals.lookup g) ∧
    ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
      ∀ v, r = .returned v → ∃ q, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
        Region.Live p' .heap q.toNat n.toNat ∧ ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat → ¬ p.Allocated a)

theorem funSpec_allocRel : FunSpec σ guestCtx (nm "alloc") (AllocRel (σ := σ)) :=
  FunSpec.and (callR_of_csumm (σ := σ) tab_alloc (by decide) (by intro g _ h; cases h) csok_nil)
    (allocSpec_alloc (σ := σ) guestCtx_code)

/-- A heap block returned by `alloc` is a fresh buffer between the ghost allocators. -/
theorem fbuf_of_alloc {Γ' : Gam} {p0 p p' : Ptrs} {q : BitVec 64} {n : BitVec 64}
    (hfb : FreshBuf Γ' p p' q n.toNat) (hm0 : (Exb.gp0 p0).Mono p) (hq8 : q.toNat % 8 = 0)
    (hlive : Region.Live p' .heap q.toNat n.toNat) (hunal : ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat → ¬ p.Allocated a) :
    FreshBuf Γ' (Exb.gp0 p0) (Exb.gp0 p') q n.toNat := by
  refine ⟨hfb.1, fun a ha => ⟨?_, (hfb.2 a ha).2⟩⟩
  obtain ⟨h1, h2, h3⟩ := ha
  have hu := hunal a.toNat (by omega) h3
  simp only [Region.Live] at hlive
  simp only [Fresh, Exb.gp0, Ptrs.Mono, Ptrs.Allocated] at *
  omega

/-- `alloc` as a `CallR` that also says where the block is. -/
theorem callR_alloc_heap : CallR (σ := σ) (nm "alloc")
    (fun vs _ Γ p => ArgsOK guestC Γ p AllocSig.params vs ∧ ∃ n, vs = [.val (.word n)]) (fun _ _ _ _ => False)
    (fun vs _ Γ p v _ Γ' p' => (RetOK Γ' p p' vs AllocSig.ret v ∧ (AllocSig.grows = false → NewFresh Γ Γ' p p)) ∧
      ∀ n, vs = [.val (.word n)] → ∃ q, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧ Region.Live p' .heap q.toNat n.toNat ∧
        ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat → ¬ p.Allocated a) := by
  refine FunSpec.mono (funSpec_allocRel (σ := σ)) ?_
  intro vs s r t ⟨hR, hAl⟩ v hv Γ p hG hp hJ hE ⟨hargs, n0, hvs0⟩
  obtain ⟨Γ', p', hstp, hq⟩ := hR v hv Γ p hG hp hJ hE hargs
  subst hv
  subst hvs0
  obtain ⟨hmem, hglob, p'', hp'', hord'', hmono'', hvret⟩ := hAl (by simp [Good]) n0 p rfl hp (ordered_of_G hG hp)
  obtain rfl : p' = p'' := Option.some.inj (hstp.1.hp'.symm.trans hp'')
  refine ⟨Γ', p', hstp, hq, fun n hn => ?_⟩
  obtain rfl : n0 = n := by simpa using hn
  exact hvret v rfl

theorem alloc_adopt_core {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {S : FS} {s st : State σ} {callee : Locs}
    {Γ : Gam} {p : Ptrs} {n : BitVec 64} {v : ValueHOL 64} {ty : Nat}
    (hty : ty = tBOS ∨ ty = tBO ∨ ty = tMCO) (hn8 : n.toNat % 8 = 0) (hmin : (guestC.ty ty).minSz ≤ n.toNat)
    (hpos : 0 < n.toNat)
    (hAR : AllocRel (σ := σ) [.val (.word n)] (callEntryStateHOLFinite s callee) (.returned v) st)
    (hr : EbRun Γ0 s0 p0 Γ s p) (hL : HoldsAll p0 Γ p s S)
    (hgS : ∀ g w t, S (Fct.gobj g w t) → g ≠ gHeap) (hgv : ∀ g w, S (Fct.gval g w) → g ≠ gHeap) :
    ∃ (q : BitVec 64) (Γ' : Gam) (p' : Ptrs), v = .val (.word q) ∧
      StepD Γ p (callEntryStateHOLFinite s callee) (Γ' ++ [⟨q, ty, n.toNat⟩]) p' st ∧
      EbRun Γ0 s0 p0 (Γ' ++ [⟨q, ty, n.toNat⟩]) { st with locals := s.locals } p' ∧
      HoldsAll p0 (Γ' ++ [⟨q, ty, n.toNat⟩]) p' { st with locals := s.locals } (fun f => S f ∨ AdoptNF S q ty n.toNat f) := by
  obtain ⟨hR, hAl⟩ := hAR
  have hre : EbRun Γ0 s0 p0 Γ (callEntryStateHOLFinite s callee) p := ebRun_loc hr callee (s.clock - 1)
  have hLe : HoldsAll p0 Γ p (callEntryStateHOLFinite s callee) S := holdsAll_loc hL callee (s.clock - 1)
  obtain ⟨Γ', p', hstp, hq⟩ := hR v rfl Γ p (ebRun_G hre) (ebRun_ptrs hre) (ebRun_jr hre)
    ⟨ebRun_ev hre, ebRun_cc hre⟩ (argsOK_any (by simp) (by simp))
  obtain ⟨hmem, hglob, p'', hp'', hord'', hmono'', hvret⟩ := hAl (by simp [Good]) n p rfl (ebRun_ptrs hre) (ebRun_ord hre)
  obtain rfl : p' = p'' := Option.some.inj (hstp.1.hp'.symm.trans hp'')
  obtain ⟨q, rfl, hq8, hlive, hunal⟩ := hvret v rfl
  have hfb := retok_alloc hq.1
  have hord' := ebRun_ord (ebRun_stp hre hstp)
  have hL' : Layout guestC p' Γ' := by
    obtain ⟨q0, hq0, -, hL0, -⟩ := hstp.1.hG'
    obtain rfl : q0 = p' := Option.some.inj (hq0.symm.trans hstp.1.hp')
    exact hL0
  have hq64 : q.toNat + n.toNat < 2 ^ 64 := by
    have := hord'.2.1; have := hlive.2; unfold heapEnd at *; omega
  have hlive' : (guestC.ty ty).region.Live p' (Obj.lo ⟨q, ty, n.toNat⟩) (⟨q, ty, n.toNat⟩ : Obj).size := by
    have hreg : (guestC.ty ty).region = .heap := by rcases hty with rfl | rfl | rfl <;> rfl
    rw [hreg]; exact hlive
  have hdisj : ∀ a : BitVec 64, InO (⟨q, ty, n.toNat⟩ : Obj) a → ¬ InObj Γ' a.toNat := fun a ha =>
    freshBuf_disj hL' hn8 hfb ha.1 ha.2 hq64
  have hG'' := g_adopt_blk hstp.1.hG' hstp.1.hp' (x := ⟨q, ty, n.toNat⟩) hty hq8 hn8 hmin hpos hlive' hdisj
  have hfr : ∀ a : BitVec 64, (⟨q, ty, n.toNat⟩ : Obj).lo ≤ a.toNat → a.toNat < (⟨q, ty, n.toNat⟩ : Obj).hi → Fresh (Exb.gp0 p) p' a := by
    intro a h1 h2
    have := fresh_byte (ebRun_ord hre) hord' hn8 hfb h1 h2 a.isLt
    exact fresh_gp0 (ebRun_ord hre) (by simpa using this)
  have hstep := stepD_snoc hstp.1 hG'' hfr
  have hgl : ∀ g, g ≠ gHeap → gword st g = gword (callEntryStateHOLFinite s callee) g := fun g hg =>
    gword_of_lookup (hglob g hg)
  have hL'' := holds_of_frames hstep (ebRun_ord0 hre) hstp.2.2.2.1 hstp.2.2.2.2 (fun f _ a ha => fun h => h.elim) hLe
    (fun g w t hm => hgl g (hgS g w t hm)) (fun g w hm => hgl g (hgv g w hm))
  have hrun := ebRun_stepD hre hstep hstp.2.1 hstp.2.2.1
  have hne : ∀ b : BitVec 64, (∃ o ∈ Γ, o.base = b) → b ≠ q := by
    rintro b ⟨o, ho, hob⟩ hbq
    obtain ⟨o', ho', hb', -, hs'⟩ := hstp.1.ext o ho
    have hpos' := (hL'.1 o' ho').2.2.1
    refine hdisj q ⟨le_refl _, ?_⟩ ⟨o', ho', ?_, ?_⟩
    · unfold Obj.hi; show q.toNat < q.toNat + n.toNat; omega
    · unfold Obj.lo; rw [hb', hob, hbq]
    · unfold Obj.hi; rw [hb', hob, hbq]; omega
  refine ⟨q, Γ', p', rfl, hstep, ebRun_loc hrun s.locals st.clock, ?_⟩
  intro g hg
  rcases hg with hg | hg
  · exact holdsAll_loc hL'' s.locals st.clock g hg
  · rcases hg with rfl | ⟨b, ty', n', hb, rfl⟩ | ⟨g', b, ty', hb, rfl⟩ | rfl
    · exact ⟨⟨q, ty, n.toNat⟩, List.mem_append_right _ (List.mem_singleton.mpr rfl), rfl, rfl, le_refl _⟩
    · obtain ⟨o, ho, hob, -⟩ := hLe _ hb
      exact hne b ⟨o, ho, hob⟩
    · obtain ⟨-, o, ho, hob, -⟩ := hLe _ hb
      exact hne b ⟨o, ho, hob⟩
    · intro y ⟨f0, hf0, hry⟩ ⟨h1, h2⟩
      obtain ⟨q0, hq0, hord0, hL0, -⟩ := ebRun_G hr
      obtain rfl : q0 = p := Option.some.inj (hq0.symm.trans (ebRun_ptrs hr))
      have hin := reads_inObj hord0 hL0 (hLe f0 hf0) hry
      have hin' := inObj_ext hstp.1.ext hin
      exact hdisj y ⟨h1, by unfold Obj.hi; show y.toNat < q.toNat + n.toNat; omega⟩ hin'

theorem hdecAllocAdopt {rn : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) {n : BitVec 64} {ty : Nat} (hty : ty = tBOS ∨ ty = tBO ∨ ty = tMCO)
    (hn8 : n.toNat % 8 = 0) (hmin : (guestC.ty ty).minSz ≤ n.toNat) (hpos : 0 < n.toNat)
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hgS : ∀ g w t, S (Fct.gobj g w t) → g ≠ gHeap) (hgv : ∀ g w, S (Fct.gval g w) → g ≠ gHeap)
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word w))) (fun f => S f ∨ AdoptNF S w ty n.toNat f)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one (nm "alloc") [e] k) QT := by
  refine hdecCallK hQT (funSpec_allocRel (σ := σ)) ?_
  intro s hs hpa vs hvs callee v st hAR hst hsh
  have hvs' := alloc_args (he s hpa) hvs
  subst hvs'
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  obtain ⟨q, Γ', p', rfl, hstep, hrun, hH⟩ := alloc_adopt_core hty hn8 hmin hpos hAR hr hL hgS hgv
  refine hoare_pre (hk q) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨_, p', ebRun_set hrun rn _, ?_⟩, lke_set (lke_restore hlk) rn _⟩
  intro g hg
  have := (holdsAll_loc hH s.locals st.clock) g hg
  cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

end alloc

end InitECandidate.Solver.MemSafe.Eb
