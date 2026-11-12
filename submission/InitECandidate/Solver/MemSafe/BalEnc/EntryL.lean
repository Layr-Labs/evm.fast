import InitECandidate.Solver.MemSafe.BalEnc.Rules

set_option autoImplicit false

/-!
# The entry loop

`while i < n { e = lp + i * E; c = b + 9; word(idx); f2(value); wrap(b, c); i = i + 1 }`
keeps its invariant `Hs fs` whenever `b` is a pointer `≥ h0` that only moves up (to at most `PB`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

/-- Any word for a variable whose only fact is that it is a word. -/
theorem hs_wd_set {fs : List Fct} {m : Locals} {x : MlS} {W : BitVec 64} (h : Hs fs m)
    (hok : ∀ f ∈ fs, x ∈ f.vars → f = wd x) : Hs fs (m.update (x, .val (.word W))) := by
  intro f hf
  by_cases hv : x ∈ f.vars
  · have := hok f hf hv
    subst this
    exact bd_wd m x W
  · exact fct_upd hv (h f hf)

/-- The facts of the pointer `c` above the base `b`. -/
def cf (b c : MlS) (h0 U : Nat) : List Fct := [Fct.bd c h0 U, Fct.rel b c]

theorem hs_cf_up {b c : MlS} {h0 U U' : Nat} {rest : List Fct} {m : Locals} {T W : BitVec 64}
    (hbc : b ≠ c) (hrest : ∀ f ∈ rest, c ∉ f.vars) (h : Hs (cf b c h0 U ++ rest) m)
    (hT : m.lookup c = some (.val (.word T))) (hlt : T.toNat < W.toNat) (hle : W.toNat ≤ U') :
    Hs (cf b c h0 U' ++ rest) (m.update (c, .val (.word W))) := by
  have h1 : (Fct.bd c h0 U).holds m := h _ (by simp [cf])
  have h2 : (Fct.rel b c).holds m := h _ (by simp [cf])
  obtain ⟨w, hw, hl1, hl2⟩ := h1
  obtain ⟨B, C, hB, hC, hrel⟩ := h2
  rw [hT] at hw hC
  cases hw
  cases hC
  refine hs_append (hs_cons ⟨W, lookup_update_self _ _ _, by omega, hle⟩
    (hs_cons ⟨B, W, by rw [lookup_update_ne _ _ (Ne.symm hbc)]; exact hB,
      lookup_update_self _ _ _, by omega⟩ (hs_nil _))) ?_
  exact hs_upd hrest (hs_mono h (fun f hf => List.mem_append_right _ hf))

theorem hs_cf_new {b c : MlS} {h0 U : Nat} {m : Locals} {B : BitVec 64}
    (hbc : b ≠ c) (hB : m.lookup b = some (.val (.word B))) (hl : h0 ≤ B.toNat + 9)
    (hu : B.toNat + 9 ≤ U) (hlt : B.toNat + 9 < 2 ^ 64) :
    Hs (cf b c h0 U) (m.update (c, .val (.word (B + BitVec.ofNat 64 9)))) := by
  have e : (B + BitVec.ofNat 64 9).toNat = B.toNat + 9 := toNat_addc hlt
  exact hs_cons ⟨B + BitVec.ofNat 64 9, lookup_update_self _ _ _, by omega, by omega⟩
    (hs_cons ⟨B, B + BitVec.ofNat 64 9, by rw [lookup_update_ne _ _ (Ne.symm hbc)]; exact hB,
      lookup_update_self _ _ _, by omega⟩ (hs_nil _))

/-- **The entry loop.** -/
theorem hoareG_entryLoop {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) {i n b lp e c hl : MlS} {E : Nat} {f2 : MlS}
    {args2 : List (ExpHOL 64)} {fs : List Fct} {PB : Nat} {Ret : ValueHOL 64 → Prop}
    (hcb : c ≠ b) (hwc : bW ≠ c) (hwb : bW ≠ b) (hhb : hl ≠ b) (hhc : hl ≠ c)
    (hw2 : WriterOK a X f2) (hwW : WriterOK a X (nm "rlp_encode_word"))
    (hfe : ∀ f ∈ fs, e ∉ f.vars) (hfc : ∀ f ∈ fs, c ∉ f.vars) (hfh : ∀ f ∈ fs, hl ∉ f.vars)
    (hfw : ∀ f ∈ fs, bW ∉ f.vars)
    (hbd : Fct.bd b a.h0 PB ∈ fs) (hB0 : B0 ≤ PB) (hPB : PB + 64 ≤ 2 ^ 59)
    (hbup : ∀ f ∈ fs, b ∈ f.vars → ∀ W : BitVec 64, W.toNat ≤ PB → f.upOK b W)
    (hwi : wd i ∈ fs) (hfi : ∀ f ∈ fs, i ∈ f.vars → f = wd i) :
    HoareG σ X (APre a (Hs fs)) (entryLoop i n b lp e c hl E f2 args2) (AQ a (Hs fs) Ret) := by
  have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
  unfold entryLoop
  refine hoareG_whileA hK (J := Hs fs) (J' := Hs fs) ?_ (fun s _ h _ => h)
  refine hoareG_pre (P := APre a (Hs fs)) ?_ (fun s _ h => h.1)
  unfold entryBody
  refine hoareG_decHI hK (x := e) (fx := []) (fo := fs) (fb := fs) hfe hfe
    (fun s hs hP v hv hsh => hs_nil _) ?_ (fun f hf => hf)
  refine hoareG_decHI hK (x := c) (fx := cf b c a.h0 (PB + 9)) (fo := fs) (fb := fs) hfc hfc
    (fun s hs hP v hv hsh => ?_) ?_ (fun f hf => hf)
  · obtain ⟨B, hB, hl1, hu1⟩ := hP.2 _ hbd
    rw [ev_add2 (ev_lw hB) (ev_cw _ 9)] at hv
    cases hv
    exact hs_cf_new (Ne.symm hcb) hB (by omega) (by omega) (by omega)
  have hxw : ∀ g ∈ cf b c a.h0 (PB + 9) ++ fs, bW ∉ g.vars := by
    intro g hg
    rcases List.mem_append.mp hg with hg | hg
    · simp only [cf, List.mem_cons, List.not_mem_nil, or_false] at hg
      rcases hg with rfl | rfl <;> simp [Fct.vars, hwc, hwb]
    · exact hfw g hg
  have hxw' : ∀ g ∈ cf b c a.h0 B0 ++ fs, bW ∉ g.vars := by
    intro g hg
    rcases List.mem_append.mp hg with hg | hg
    · simp only [cf, List.mem_cons, List.not_mem_nil, or_false] at hg
      rcases hg with rfl | rfl <;> simp [Fct.vars, hwc, hwb]
    · exact hfw g hg
  have hfc' : ∀ f ∈ fs, c ∉ f.vars := hfc
  refine hoareG_stepH hK (fs := cf b c a.h0 (PB + 9) ++ fs) (fs' := cf b c a.h0 B0 ++ fs) hwW hwc
    hxw (fun m hm => ?_) (fun m T W hm hT hlt hle => hs_cf_up (Ne.symm hcb) hfc' hm hT hlt hle) ?_
  · obtain ⟨w, hw, h1, h2⟩ := hm (Fct.bd c a.h0 (PB + 9)) (by simp [cf])
    exact ⟨w, hw, h1, by omega⟩
  refine hoareG_stepH hK (fs := cf b c a.h0 B0 ++ fs) (fs' := cf b c a.h0 B0 ++ fs) hw2 hwc
    hxw' (fun m hm => ?_) (fun m T W hm hT hlt hle => hs_cf_up (Ne.symm hcb) hfc' hm hT hlt hle) ?_
  · obtain ⟨w, hw, h1, h2⟩ := hm (Fct.bd c a.h0 B0) (by simp [cf])
    exact ⟨w, hw, h1, by omega⟩
  refine hoareG_wrap hK hC hA hT (UB := B0) (by omega) hhb hhc (fk := fs) (fo := fs) (fb := fs)
    (fun f hf => ?_) hfh (fun m hm => ?_) (fun m B C B' hm hB hCc h1 h2 h3 => ?_) ?_ (fun f hf => hf)
  · rcases List.mem_append.mp hf with hf | hf
    · simp only [cf, List.mem_cons, List.not_mem_nil, or_false] at hf
      rcases hf with rfl | rfl <;> simp [Fct.vars, hhc, hhb]
    · exact hfh f hf
  · obtain ⟨B, hB, hl1, hu1⟩ := hm (Fct.bd b a.h0 PB) (List.mem_append_right _ hbd)
    obtain ⟨w, hw, hl2, hu2⟩ := hm (Fct.bd c a.h0 B0) (by simp [cf])
    obtain ⟨B', C, hB', hCc, hrel⟩ := hm (Fct.rel b c) (by simp [cf])
    rw [hB] at hB'
    cases hB'
    exact ⟨B, C, hB, hCc, hl1, hrel, by
      rw [hCc] at hw; cases hw; exact hu2⟩
  · have hm' : Hs fs m := hs_mono hm (fun f hf => List.mem_append_right _ hf)
    obtain ⟨w, hw, hl2, hu2⟩ := hm (Fct.bd c a.h0 B0) (by simp [cf])
    rw [hCc] at hw
    cases hw
    refine hs_up hm' hB (by omega) (fun f hf hv => hbup f hf hv B' (by omega))
  · refine hoareG_assignA hK (fun s _ hL v hv => ?_)
    obtain ⟨I, hI, -, -⟩ := hL _ hwi
    rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv
    cases hv
    exact hs_wd_set hL hfi

end InitECandidate.Solver.MemSafe.BalEnc
