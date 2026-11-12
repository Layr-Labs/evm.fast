import InitECandidate.Solver.MemSafe.Sc.Then

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# `set_code`: the structural proof (checker steps + the hand `then` branch)
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

/-- The output of a `dec`/`decCall` after the binding is restored. -/
def restO (x : MlS) (A : AEnv) (o : AOut) : AOut :=
  ⟨o.nrm.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩),
   o.brk.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩),
   o.cnt.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩)⟩

def sgKc : Sig := ⟨[.any, .any, .buf 32], [], [], false⟩
theorem fs_kc : findSig scE A1 (nm "keccak256")
    ([lv (nm "code"), lv (nm "code_len"), lv (nm "h")].map (aev scE.C A1 chkFuel)) = some sgKc := by
  rfl

theorem lenL_set {x : MlS} (hx : x ≠ nm "code_len") {u : State σ} {v : ValueHOL 64}
    (h : LenL u.locals) : LenL (setVarHOLFinite x v u).locals := by
  obtain ⟨n, hn, hb⟩ := h
  exact ⟨n, by rw [lk_set_ne _ _ hx]; exact hn, hb⟩


theorem chk_tail_ex : ∃ okT, chk scE AjN scTail = some okT := by
  obtain ⟨o, ho⟩ := Option.isSome_iff_exists.mp chk_tail
  exact ⟨o, ho⟩

section sound
variable {a : Act σ}

theorem ite_sound (ha : ActOK a guestCtx) (hE : scE.C = a.C)
    (hT : CTabSound σ guestCtx a.Cb a.H scE.tab) (hsg : scE.sg = a.sg) (hcE : scE.caps = a.caps)
    (hWS : WinSpecs σ guestCtx) (hH : a.H = Hooks.guestHooksR (σ := σ))
    (hX : guestCtx.code.lookup = guestCode) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a A2 Γ Θ s ∧ LenL s.locals) scIte
      (SPost a scE.sg.ret Oite Γ Θ) := by
  unfold scIte
  refine hoareG_ite ?_ ?_
  · exact hoareG_conseq (then_sound ha hE hT hsg hcE hWS hH hX Γ Θ) (fun s _ hs => hs.1)
      (fun r t _ _ H => spost_join_left H)
  · exact hoareG_conseq (chk_sound ha hE hT hsg hcE hWS .skip A2 _ chk_skip Γ Θ)
      (fun s _ hs => hs.1.1) (fun r t _ _ H => spost_join_right H)

theorem eq_sound (ha : ActOK a guestCtx) (hE : scE.C = a.C)
    (hT : CTabSound σ guestCtx a.Cb a.H scE.tab) (hsg : scE.sg = a.sg) (hcE : scE.caps = a.caps)
    (hWS : WinSpecs σ guestCtx) (hH : a.H = Hooks.guestHooksR (σ := σ))
    (hX : guestCtx.code.lookup = guestCode) {okT : AOut} (hokT : chk scE AjN scTail = some okT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a A1 Γ Θ s ∧ LenL s.locals) scEq
      (SPost a scE.sg.ret (restO (nm "eq") A1 (seqO Oite okT)) Γ Θ) := by
  unfold scEq
  refine dcx ha hE hT hsg hcE fs_me (funSpec_true (σ := σ) (X := guestCtx) _) (fun _ s => LenL s.locals)
    Γ Θ ?_ ?_
  · intro s st vs callee v Γ' _ hLen _ _ _ _ _ _
    exact lenL_set (by decide) hLen
  · intro Γ Θ
    refine Stor4.seq_sound (fun Γ Θ t => IG a A2 Γ Θ t ∧ LenL t.locals) (by rw [oite_eq]) ?_ ?_ Γ Θ
    · exact fun Γ Θ => ite_sound ha hE hT hsg hcE hWS hH hX Γ Θ
    · exact fun Γ Θ => chk_sound ha hE hT hsg hcE hWS scTail AjN okT hokT Γ Θ

theorem kc_sound (ha : ActOK a guestCtx) (hE : scE.C = a.C)
    (hT : CTabSound σ guestCtx a.Cb a.H scE.tab) (hsg : scE.sg = a.sg) (hcE : scE.caps = a.caps)
    (hWS : WinSpecs σ guestCtx) (hH : a.H = Hooks.guestHooksR (σ := σ))
    (hX : guestCtx.code.lookup = guestCode) {okT : AOut} (hokT : chk scE AjN scTail = some okT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a A1 Γ Θ s ∧ LenL s.locals) (.seq kcStmt scEq)
      (SPost a scE.sg.ret (seqO ⟨some A1, none, none⟩ (restO (nm "eq") A1 (seqO Oite okT))) Γ Θ) := by
  refine seqx (A' := A1) (op := ⟨some A1, none, none⟩) LenL rfl ?_ ?_ Γ Θ
  · exact fun Γ Θ => callx ha hE hT hsg hcE fs_kc _ LenL Γ Θ
  · exact fun Γ Θ => eq_sound ha hE hT hsg hcE hWS hH hX hokT Γ Θ

theorem top_sound (ha : ActOK a guestCtx) (hE : scE.C = a.C)
    (hT : CTabSound σ guestCtx a.Cb a.H scE.tab) (hsg : scE.sg = a.sg) (hcE : scE.caps = a.caps)
    (hWS : WinSpecs σ guestCtx) (hH : a.H = Hooks.guestHooksR (σ := σ))
    (hX : guestCtx.code.lookup = guestCode) {okT : AOut} (hokT : chk scE AjN scTail = some okT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a Ai Γ Θ s ∧ LenL s.locals) scBody
      (SPost a scE.sg.ret (restO (nm "h") Ai (seqO ⟨some A1, none, none⟩
        (restO (nm "eq") A1 (seqO Oite okT)))) Γ Θ) := by
  unfold scBody
  refine dcx ha hE hT hsg hcE fs_a32 (funSpec_true (σ := σ) (X := guestCtx) _) (fun _ s => LenL s.locals)
    Γ Θ ?_ ?_
  · intro s st vs callee v Γ' _ hLen _ _ _ _ _ _
    exact lenL_set (by decide) hLen
  · exact fun Γ Θ => kc_sound ha hE hT hsg hcE hWS hH hX hokT Γ Θ

end sound

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.top_sound
