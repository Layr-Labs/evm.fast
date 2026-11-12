import InitECandidate.Solver.MemSafe.Stor4.Sound
import InitECandidate.Solver.MemSafe.Frames.SCGuestT

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Stor4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Stor3 (ssSig ssCaps)
open InitECandidate.Solver.MemSafe.Types (tHTt20 tHTh32)

/-- The checking environment of `set_storage` (`MCand.env`). -/
def ssE : CEnv := ⟨upg Types.guestC ssCaps, ShardsJL.tab26, ssSig, ssCaps⟩

def Ai : AEnv := initEnv ssParams ssSig.params 0 ⟨[], []⟩

def sgGao : Sig := ⟨[.buf 20], [], [], true⟩
def sgGet : Sig := ⟨[.any, .any], [], [], false⟩

def argsGao : List (ExpHOL 64) := [lv (nm "addr")]
def argsGet : List (ExpHOL 64) := [lv (nm "outer"), lv (nm "addr")]
def expOuter : ExpHOL 64 := .load .one (.op .add [.var .global (nm "ts"), cw 32])

def A1 : AEnv := bindRes Ai (argsGao.map (aev ssE.C Ai chkFuel)) sgGao .one (nm "a")
def A2 : AEnv := ⟨setL (nm "outer") (bindAV .one (aev ssE.C A1 chkFuel expOuter)) A1.L, A1.T⟩
def A3 : AEnv := bindRes A2 (argsGet.map (aev ssE.C A2 chkFuel)) sgGet (.comb [.one, .one]) (nm "m")
def A4 : AEnv := ⟨setL (nm "inner") (bindAV .one (aev ssE.C A3 chkFuel (cw 0))) A3.L, A3.T⟩
def AJ : AEnv := ⟨setL (nm "inner") (.gp tHTh32 0) A4.L, A4.T⟩

/-- The output of a `dec`/`decCall` after the binding is restored. -/
def restO (x : MlS) (A : AEnv) (o : AOut) : AOut :=
  ⟨o.nrm.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩),
   o.brk.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩),
   o.cnt.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩)⟩

/-- The output of `p; q` (normal exit of `p`). -/
def seqO (op oq : AOut) : AOut := ⟨oq.nrm, joinO op.brk oq.brk, joinO op.cnt oq.cnt⟩

theorem fs_gao : findSig ssE Ai (nm "get_account_optional") (argsGao.map (aev ssE.C Ai chkFuel)) =
    some sgGao := by rfl
theorem fs_get : findSig ssE A2 (nm "htab_get") (argsGet.map (aev ssE.C A2 chkFuel)) =
    some sgGet := by rfl
theorem chk_throw : chk ssE A1 ssThrow = some ⟨some A1, none, none⟩ := by rfl
theorem chk_then : chk ssE A4 ssThen = some ⟨some AJ, none, none⟩ := by rfl
theorem chk_tail : (chk ssE AJ ssTail).isSome = true := by decide +kernel

variable {σ : Type}

theorem aev_outer : aev ssE.C A2 chkFuel (lv (nm "outer")) = .gp tHTt20 0 := by rfl
theorem aev_addr : aev ssE.C A2 chkFuel (lv (nm "addr")) = .tmp 0 0 := by rfl

/-- After `var m = htab_get(outer, addr)`: `m = <a, b>` and a found `b` fits `ptr tHTh32`. -/
def ExM (Γ : Gam) (t : State σ) : Prop :=
  ∃ a b : BitVec 64, t.locals.lookup (nm "m") = some (wv [a, b]) ∧
    (a ≠ 0 → Fits Γ (.ptr tHTh32) b)

section sound
variable {a : Act σ}

/-- `inner = m.1;` when `m.0 ≠ 0`: `inner` is a `tHTh32` object. -/
theorem else_sound (ha : ActOK a guestCtx) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => (IG a A4 Γ Θ s ∧ ExM Γ s) ∧
      ev s (.cmp .equal (.rfield 0 (lv (nm "m"))) (cw 0)) = some (.val (.word 0))) ssElse
      (SPost a ssE.sg.ret ⟨some AJ, none, none⟩ Γ Θ) := by
  unfold ssElse
  refine hoareG_assign fun s hctx ⟨⟨hig, a', b', hm, hfit⟩, hc⟩ v hv hval => ?_
  have hx : ev s (lv (nm "m")) = some (wv [a', b']) := by rw [ev_lv]; exact hm
  have e1 : ev s (.rfield 1 (lv (nm "m"))) = some (.val (.word b')) :=
    Spec.ev_rfield_wv (ws := [a', b']) hx (i := 1) (by simp)
  have e0 : ev s (.rfield 0 (lv (nm "m"))) = some (.val (.word a')) :=
    Spec.ev_rfield_wv (ws := [a', b']) hx (i := 0) (by simp)
  rw [e1] at hv
  cases hv
  obtain ⟨x, y, hx1, hy1, hxy⟩ := cmp_false hc
  rw [e0] at hx1
  cases hx1
  rw [ev_cw] at hy1
  cases hy1
  have ha' : a' ≠ 0 := Spec.equal_false hxy
  obtain ⟨ob, hob, hb, ht⟩ := hfit ha'
  exact ⟨AJ, Γ, Θ, rfl, later_refl Γ Θ, ig_set ha.hH hig (x := nm "inner") (av := .gp tHTh32 0)
    ⟨b', rfl, ob, hob, ht, by rw [← hb]; simp⟩⟩

theorem ite_sound (ha : ActOK a guestCtx) (hE : ssE.C = a.C)
    (hT : CTabSound σ guestCtx a.Cb a.H ssE.tab) (hsg : ssE.sg = a.sg) (hcE : ssE.caps = a.caps)
    (hWS : WinSpecs σ guestCtx) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a A4 Γ Θ s ∧ ExM Γ s) ssIte
      (SPost a ssE.sg.ret ⟨some AJ, none, none⟩ Γ Θ) := by
  unfold ssIte
  refine hoareG_ite ?_ ?_
  · exact hoareG_conseq (chk_sound ha hE hT hsg hcE hWS ssThen A4 _ chk_then Γ Θ)
      (fun s _ hs => hs.1.1) (fun r t _ _ H => H)
  · exact else_sound ha Γ Θ

theorem inner_sound (ha : ActOK a guestCtx) (hE : ssE.C = a.C)
    (hT : CTabSound σ guestCtx a.Cb a.H ssE.tab) (hsg : ssE.sg = a.sg) (hcE : ssE.caps = a.caps)
    (hWS : WinSpecs σ guestCtx) {okT : AOut} (hokT : chk ssE AJ ssTail = some okT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (fun s => IG a A3 Γ Θ s ∧ ExM Γ s) ssInner
      (SPost a ssE.sg.ret (restO (nm "inner") A3 (seqO ⟨some AJ, none, none⟩ okT)) Γ Θ) := by
  unfold ssInner
  refine dec_sound_ex ha hE (E := ssE) (ob := seqO ⟨some AJ, none, none⟩ okT)
    ExM ?_ ?_ Γ Θ
  · rintro Γ s v ⟨a', b', h, hf⟩
    exact ⟨a', b', by rw [lk_set_ne _ _ (by decide)]; exact h, hf⟩
  · intro Γ Θ
    exact seq_sound (fun Γ Θ => fun t => IG a A4 Γ Θ t ∧ ExM Γ t) rfl
      (fun Γ Θ => ite_sound ha hE hT hsg hcE hWS Γ Θ)
      (fun Γ Θ => chk_sound ha hE hT hsg hcE hWS ssTail AJ okT hokT Γ Θ) Γ Θ

theorem m_sound (ha : ActOK a guestCtx) (hE : ssE.C = a.C)
    (hT : CTabSound σ guestCtx a.Cb a.H ssE.tab) (hsg : ssE.sg = a.sg) (hcE : ssE.caps = a.caps)
    (hWS : WinSpecs σ guestCtx) (hCb : a.Cb = Types.guestC)
    (hHH : a.H = Hooks.guestHooksR (σ := σ)) {okT : AOut} (hokT : chk ssE AJ ssTail = some okT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (IG a A2 Γ Θ) ssM
      (SPost a ssE.sg.ret
        (restO (nm "m") A2 (restO (nm "inner") A3 (seqO ⟨some AJ, none, none⟩ okT))) Γ Θ) := by
  unfold ssM
  refine dc_sound_ex ha hE hT hsg hcE fs_get (funSpec_get_fits (σ := σ)) ExM Γ Θ ?_
    (fun Γ Θ => inner_sound ha hE hT hsg hcE hWS hokT Γ Θ)
  intro s st vs callee v Γ' hig hvs hLc' hext hsh hGe hav
  obtain ⟨u1, vs1, rfl, h1, h2⟩ := evs_cons_inv hvs
  obtain ⟨u2, vs2, rfl, h2', h3⟩ := evs_cons_inv h2
  rw [evs_nil] at h3
  cases h3
  obtain ⟨w0, hw0, hv0⟩ := hav 0 (.gp tHTt20 0) (by simp [argsGet, aev_outer])
  obtain ⟨w1, hw1, hv1⟩ := hav 1 (.tmp 0 0) (by simp [argsGet, aev_addr])
  simp only [List.getElem?_cons_zero, Option.some.injEq] at hw0
  simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hw1
  subst hw0 hw1
  obtain ⟨T, rfl, ob, hob, hty, hT0⟩ := hv0
  obtain ⟨K, rfl, -⟩ := hv1
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
  match ws, hws with
  | [a1, b1], _ =>
  rw [hCb, hHH] at hGe
  refine ⟨a1, b1, lk_set_self _ _ _, fun ha1 => fits_ext hext ?_⟩
  exact hLc' Γ hGe T K rfl ⟨ob, hob, by rw [hT0]; simp, hty⟩ _ rfl a1 b1 rfl ha1

theorem outer_sound (ha : ActOK a guestCtx) (hE : ssE.C = a.C)
    (hT : CTabSound σ guestCtx a.Cb a.H ssE.tab) (hsg : ssE.sg = a.sg) (hcE : ssE.caps = a.caps)
    (hWS : WinSpecs σ guestCtx) (hCb : a.Cb = Types.guestC)
    (hHH : a.H = Hooks.guestHooksR (σ := σ)) {okT : AOut} (hokT : chk ssE AJ ssTail = some okT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (IG a A1 Γ Θ) (.seq ssThrow ssOuter)
      (SPost a ssE.sg.ret (seqO ⟨some A1, none, none⟩ (restO (nm "outer") A1
        (restO (nm "m") A2 (restO (nm "inner") A3 (seqO ⟨some AJ, none, none⟩ okT))))) Γ Θ) := by
  refine seq_sound (fun Γ Θ => IG a A1 Γ Θ) rfl
    (fun Γ Θ => chk_sound ha hE hT hsg hcE hWS ssThrow A1 _ chk_throw Γ Θ) ?_ Γ Θ
  intro Γ Θ
  unfold ssOuter
  refine hoareG_pre (dec_sound_ex ha hE (E := ssE) (fun _ _ => True) (fun _ _ _ h => h) ?_ Γ Θ)
    (fun s _ h => ⟨h, trivial⟩)
  intro Γ Θ
  exact hoareG_pre (m_sound ha hE hT hsg hcE hWS hCb hHH hokT Γ Θ) (fun s _ h => h.1)

theorem top_sound (ha : ActOK a guestCtx) (hE : ssE.C = a.C)
    (hT : CTabSound σ guestCtx a.Cb a.H ssE.tab) (hsg : ssE.sg = a.sg) (hcE : ssE.caps = a.caps)
    (hWS : WinSpecs σ guestCtx) (hCb : a.Cb = Types.guestC)
    (hHH : a.H = Hooks.guestHooksR (σ := σ)) {okT : AOut} (hokT : chk ssE AJ ssTail = some okT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ guestCtx (IG a Ai Γ Θ) ssBody
      (SPost a ssE.sg.ret (restO (nm "a") Ai (seqO ⟨some A1, none, none⟩ (restO (nm "outer") A1
        (restO (nm "m") A2 (restO (nm "inner") A3 (seqO ⟨some AJ, none, none⟩ okT)))))) Γ Θ) := by
  unfold ssBody
  refine hoareG_pre (dc_sound_ex ha hE hT hsg hcE fs_gao (funSpec_true (σ := σ) (X := guestCtx) _)
    (fun _ _ => True) Γ Θ (fun _ _ _ _ _ _ _ _ _ _ _ _ _ => trivial) ?_) (fun s _ h => h)
  intro Γ Θ
  exact hoareG_pre (outer_sound ha hE hT hsg hcE hWS hCb hHH hokT Γ Θ) (fun s _ h => h.1)

end sound

end InitECandidate.Solver.MemSafe.Stor4
