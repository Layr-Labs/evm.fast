import InitECandidate.Solver.MemSafe.Eb.Tail5
import InitECandidate.Solver.MemSafe.Eb.CallW

/-!
# `execute_block`: table-call combinators for the tail (plain statement calls, fresh `alloc`)
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

variable {σ : Type}

theorem fresh_lift_left {p0 p p' : Ptrs} (h : p0.Mono p) {a : BitVec 64} (hf : Fresh p p' a) : Fresh p0 p' a := by
  unfold Ptrs.Mono at h; unfold Fresh at *; omega

/-- A fresh block is a `BufOK` buffer. -/
theorem bufOK_of_fbuf {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {w : BitVec 64} {n : Nat}
    (hr : ∃ s0 Γ0, EbRun Γ0 s0 p0 Γ u p) (h : (Fct.fbuf w n).holds p0 Γ p u) : BufOK guestC Γ p w.toNat n := by
  obtain ⟨s0, Γ0, hr⟩ := hr
  intro a ha
  right
  exact ⟨(h.2 a ha).2, (alloc_of_gfresh (ebRun_ord0 hr) (h.2 a ha).1).2.2⟩

section tail6
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

/-- A statement call of a plain table entry whose arguments are all `any`. -/
theorem hn_tabcall {f : MlS} {sg : Sig} {args : List (ExpHOL 64)} (hf : CSumm σ guestCtx guestC (HR σ) f sg [])
    (hg : sg.gw = []) (hnm : tabNames.contains f = true) (hps : ∀ pt ∈ sg.params, pt = PT.any)
    (hlen : sg.params.length = args.length) (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true)) :
    HN (PA E En S) (callD f args) (PA E En S) := by
  refine hn_post (hn_callR (E := E) (En := En) (S := S) (f := f) (args := args)
    (W := fun g' => tabW.contains g' = true) (cr_plain hf hg) (gwk_tab hnm) (fun _ => False) ?_ ?_)
    (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · refine callObl_plain ?_ hT hz
    intro s hs vs hvs Γ p hr hL
    exact argsOK_any_eval hps hlen hvs
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim

theorem callR_withpre {f : MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
    {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
    (h : CallR f Pre D Q) :
    CallR f Pre D (fun vs s Γ p v t Γ' p' => Pre vs s Γ p ∧ Q vs s Γ p v t Γ' p') := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE hpre
  obtain ⟨Γ', p', h1, h2⟩ := h vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE hpre
  exact ⟨Γ', p', h1, hpre, h2⟩

/-- `var rn = alloc(e); k` with a fresh, unadopted block of `n` bytes: the continuation sees `fbuf w n`. -/
theorem hdecAllocFresh {rn : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) {n : BitVec 64} (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word w))) (fun f => S f ∨ f = Fct.fbuf w n.toNat)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one (nm "alloc") [e] k) QT := by
  have hcr := callR_withpre (callR_pre (callR_alloc_heap (σ := σ))
    (Pre' := fun vs _ Γ p => ArgsOK guestC Γ p AllocSig.params vs ∧ vs = [.val (.word n)]) (fun _ _ _ _ _ _ h => ⟨h.1, n, h.2⟩))
  refine hdecCallRW (E := E) (En := En) (S := S) (W := fun g' => tabW.contains g' = true) hQT
    hcr (gwk_tab (by decide)) (fun w f => f = Fct.fbuf w n.toNat) ?_ ?_ hk
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hs vs hvs callee Γ p hr hL
    exact ⟨argsOK_any_eval (by simp) (by simp) hvs, alloc_args (he s hs) hvs⟩
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq w hw f hf
    subst hf
    obtain ⟨⟨-, hvs⟩, ⟨hret, -⟩, hheap⟩ := hq
    subst hvs
    obtain ⟨q, hqv, hq8, hlive, hunal⟩ := hheap n rfl
    subst hqv
    obtain rfl : w = q := by simpa using hw.symm
    have hfb := retok_alloc hret
    exact fbuf_of_alloc hfb (ebRun_mono hr) hq8 hlive hunal

/-- `var rn = f(args); k` for a plain table entry with word result and `any` parameters. -/
theorem hdec_tab1 {f : MlS} {sg : Sig} {args : List (ExpHOL 64)} {rn : MlS} {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) (hf : CSumm σ guestCtx guestC (HR σ) f sg [])
    (hg : sg.gw = []) (hnm : tabNames.contains f = true) (hps : ∀ pt ∈ sg.params, pt = PT.any)
    (hlen : sg.params.length = args.length) (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word w))) S) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one f args k) QT := by
  refine hdecCallRW (E := E) (En := En) (S := S) (W := fun g' => tabW.contains g' = true) hQT
    (cr_plain hf hg) (gwk_tab hnm) (fun _ _ => False) ?_ ?_ (fun w => hoare_pre (hk w) ?_)
  · refine callObl_plain ?_ hT hz
    intro s hs vs hvs Γ p hr hL
    exact argsOK_any_eval hps hlen hvs
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq w hw f hf
    exact hf.elim
  · intro t _ ht
    exact pa_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf)

/-- `rn = f(args);` (a tracked local, overwritten) for a plain table entry with word result and `any` parameters. -/
theorem hn_tab1A {f : MlS} {sg : Sig} {args : List (ExpHOL 64)} {rn : MlS} {w0 : BitVec 64}
    (hf : CSumm σ guestCtx guestC (HR σ) f sg [])
    (hg : sg.gw = []) (hnm : tabNames.contains f = true) (hps : ∀ pt ∈ sg.params, pt = PT.any)
    (hlen : sg.params.length = args.length) (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hEn : En rn = some (.val (.word w0))) :
    HN (PA E En S) (.call (some (some (.local, rn), none)) f args)
      (fun t => ∃ w : BitVec 64, PA E (En.set rn (.val (.word w))) S t) := by
  refine hoare_callA (FunSpec.and (cr_plain hf hg) (gwk_tab hnm)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hvalid
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hpa0 : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step (S := S) (W := fun g' => tabW.contains g' = true)
    (Pre := fun vs _ Γ p => ArgsOK guestC Γ p sg.params vs) (D := fun _ _ _ _ => False)
    (Q := fun vs _ Γ p v _ Γ' p' => RetOK Γ' p p' vs sg.ret v ∧ (sg.grows = false → NewFresh Γ Γ' p p)) hR
    (fun g hgW => hgl v rfl g hgW) hr hL (argsOK_any_eval hps hlen hvs) (fun _ _ _ _ h => h.elim)
    (tidy_gmiss hT hz).1 (tidy_gmiss hT hz).2
  have hlook : lookupKvarHOLFinite .local rn s = some (.val (.word w0)) := hlk rn _ hEn
  rw [← isValidValueHOLFinite_eq] at hvalid
  unfold isValidValueHOLFinite at hvalid
  rw [hlook] at hvalid
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' (v := v) (by simpa [shapeOfHOLExact] using hvalid)
  have hpa' : PA E En S { st with locals := s.locals } := ⟨⟨Γ', p', hrun, hL'⟩, lke_restore hlk⟩
  exact ⟨rfl, w, pa_set hpa' rn _⟩

end tail6

end InitECandidate.Solver.MemSafe.Eb
