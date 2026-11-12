import InitECandidate.Solver.MemSafe.Ptx.PtP3

/-!
# F3f: `htab_set` statements, comparison lemmas, the precompile table
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.AllocImpl (lookup_of_gword)

variable {σ : Type}

/-- `n = e` (a local that may or may not be tracked) gets the word `w'`. -/
theorem hassignS {E : PtE σ} {En : Env} {S : FS} {n : MlS} {e : ExpHOL 64} {w' : BitVec 64}
    (he : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → v = .val (.word w')) :
    HN (PA E En S) (.assign .local n e) (PA E (En.set n (.val (.word w'))) S) :=
  hoare_assign fun s hs hP v hv _ => by
    have := he s hP v hv
    subst this
    exact ⟨rfl, pa_set hP n _⟩

theorem cond_lt_gen {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64} (ha : EvI s a (.val (.word x)))
    (hb : EvI s b (.val (.word y))) (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63)
    (h : CondTrue s (.cmp .less a b)) : x.toNat < y.toNat := by
  obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp h
  obtain ⟨x', y', hx', hy', hf⟩ := Spec.cmp_true hw hw0
  have e1 := ha _ hx'
  have e2 := hb _ hy'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at e1 e2
  rw [e1, e2] at hf
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess] at hf
  have ha' : x.toNat < 9223372036854775808 := by omega
  have hb' : y.toNat < 9223372036854775808 := by omega
  simpa [ha', hb'] using hf

theorem cond_lt_gen_false {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64} (ha : EvI s a (.val (.word x)))
    (hb : EvI s b (.val (.word y))) (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63)
    (h : ev s (.cmp .less a b) = some (.val (.word 0))) : ¬ x.toNat < y.toNat := by
  obtain ⟨x', y', hx', hy', hf⟩ := cmp_false h
  have e1 := ha _ hx'
  have e2 := hb _ hy'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at e1 e2
  rw [e1, e2] at hf
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess] at hf
  have ha' : x.toNat < 9223372036854775808 := by omega
  have hb' : y.toNat < 9223372036854775808 := by omega
  simpa [ha', hb'] using hf

theorem hgl_addF {S : FS} {L : List Fct} (h : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hL : ∀ X ∈ L, ∀ g ty, X ≠ Fct.gobj g ty) :
    ∀ g ty, (addF S L) (Fct.gobj g ty) → cW.contains g = false := by
  intro g ty hg
  rcases hg with hg | hg
  · exact h g ty hg
  · exact absurd rfl (hL _ hg g ty)

/-- `htab_set(t, key, 1)` with `t` a header object of type `th` and `key` a safe buffer. -/
theorem hn_hset {E : PtE σ} {En : Env} {S : FS} {th n m : Nat} {cs : List Cap} (hcs : CsOK cs)
    (hf : CSumm σ guestCtx guestC (HR σ) (nm "htab_set") ⟨[.fits (.ptr th), .buf n, .any], [], [], true⟩ cs)
    {aaE : MlS} {kE : ExpHOL 64} {aaw kw : BitVec 64}
    (haa : En aaE = some (.val (.word aaw))) (hobj : S (Fct.obj aaw th 0))
    (hke : ∀ s : State σ, PA E En S s → EvI s kE (.val (.word kw))) (hbk : S (Fct.bufok0 kw m)) (hnm : n ≤ m)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) :
    HN (PA E En S) (callD (nm "htab_set") [lv aaE, kE, cw 1]) (PA E En S) := by
  refine hn_callC hf (callOK_hset hcs ?_ hGl)
  intro s hpa vs hvs
  obtain ⟨x, y, z, rfl, hx, hy, hz⟩ := evs3 hvs
  have hx' := evI_lv (hpa.2 _ _ haa) x hx
  have hy' := hke s hpa y hy
  have hz' := evI_cw s 1 z hz
  exact ⟨aaw, kw, _, m, by rw [hx', hy', hz'], hobj, hbk, hnm⟩

/-- The precompile address table at entry. -/
theorem pre_pa {E : PtE σ} (hP : PtPre E) : ∃ pav : BitVec 64,
    E.s0.globals.lookup (nm "precompile_addrs") = some (.val (.word pav)) ∧
    ∃ o ∈ E.Γ0, o.base = pav ∧ o.ty = tB360 ∧ 360 ≤ o.size ∧ pav.toNat + 360 ≤ heapEnd := by
  obtain ⟨q, hq, hord, hL, hF, hT, hGl, hW⟩ := hP.hG
  obtain ⟨v, hv, o, ho, hb, ht⟩ := hGl (nm "precompile_addrs") (.ptr tB360) gt_precompile_addrs
  have hmin := (hL.1 o ho).2.2.2.1
  rw [ht] at hmin
  have h360 : (guestC.ty tB360).minSz = 360 := rfl
  rw [h360] at hmin
  refine ⟨v, lookup_of_gword hv, o, ho, hb, ht, hmin, ?_⟩
  obtain ⟨h1, h2⟩ := (live_of hL ho).1 (by rw [ht]; decide)
  have hO := hord
  unfold Ptrs.Ordered at hO
  have : o.hi = o.lo + o.size := rfl
  have e : o.lo = v.toNat := by unfold Obj.lo; rw [hb]
  omega

theorem tb360_slot (k : Nat) : (guestC.ty tB360).slot k = .scalar := by
  show b360Ty.slot k = .scalar
  unfold TyD.slot b360Ty
  simp

end InitECandidate.Solver.MemSafe.Ptx
