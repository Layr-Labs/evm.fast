import InitECandidate.Solver.MemSafe.Rec.DecPayC
import InitECandidate.Solver.MemSafe.Rec.ChkOff

set_option autoImplicit false

/-!
# `decode_payload`: the offsets buffer and `ssz_check_offsets` (`dpB`)
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (SIn ev_rfield_w FreshFoot)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA)
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

theorem scalarGlob_ssz_offs : Helpers.ScalarGlob Types.guestC (nm "ssz_offs") 32 :=
  ⟨Types.tB64, Types.gt_ssz_offs, fun _ => by rw [Types.ty_B64]; rfl,
    by rw [Types.ty_B64]; decide⟩

/-- The words stored so far at the offsets buffer. -/
def EO (W O1 O2 O3 O4 : BitVec 64) (k : Nat) (m : Mem) : Prop :=
  (1 ≤ k → rd m (W + BitVec.ofNat 64 0) = O1) ∧ (2 ≤ k → rd m (W + BitVec.ofNat 64 8) = O2) ∧
    (3 ≤ k → rd m (W + BitVec.ofNat 64 16) = O3) ∧ (4 ≤ k → rd m (W + BitVec.ofNat 64 24) = O4)

/-- The client predicate of the buffer stage: pure facts, the global, the stored words. -/
def EB (Pv Lv O1 O2 O3 O4 : BitVec 64) (k : Nat) (_Γ : Gam) (_q : Ptrs) (m : Mem)
    (g : LocalsH) : Prop :=
  (heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ heapEnd ∧ 540 ≤ Lv.toNat) ∧
    ∃ W : BitVec 64, g.lookup (nm "ssz_offs") = some (.val (.word W)) ∧ EO W O1 O2 O3 O4 k m

theorem add_zero' (W : BitVec 64) : W + BitVec.ofNat 64 0 = W := by simp

theorem cell_ne8 {W : BitVec 64} {a b : Nat} (ha : a < 2 ^ 64) (hb : b < 2 ^ 64) (hne : a ≠ b) :
    W + BitVec.ofNat 64 a ≠ W + BitVec.ofNat 64 b := fun e => hne (ofNat_cancel ha hb e)

theorem eo_step {W O1 O2 O3 O4 x : BitVec 64} {k : Nat} (hk : k < 4) {m mem : Mem}
    (hxk : (k = 0 → x = O1) ∧ (k = 1 → x = O2) ∧ (k = 2 → x = O3) ∧ (k = 3 → x = O4))
    (hrd : rd mem (W + BitVec.ofNat 64 (8 * k)) = x)
    (hmem : ∀ y, y ≠ W + BitVec.ofNat 64 (8 * k) → mem y = m y)
    (h : EO W O1 O2 O3 O4 k m) : EO W O1 O2 O3 O4 (k + 1) mem := by
  obtain ⟨h1, h2, h3, h4⟩ := h
  obtain ⟨x0, x1, x2, x3⟩ := hxk
  have hr : ∀ b, 8 * k ≠ b → b < 32 → b % 8 = 0 → rd mem (W + BitVec.ofNat 64 b) =
      rd m (W + BitVec.ofNat 64 b) :=
    fun b hb hb32 _ => Hooks.rd_congr (hmem _ (cell_ne8 (by omega) (by omega) (by omega)).symm)
  interval_cases k
  · refine ⟨fun _ => ?_, fun h => absurd h (by omega), fun h => absurd h (by omega),
      fun h => absurd h (by omega)⟩
    simpa [x0 rfl] using hrd
  · refine ⟨fun _ => ?_, fun _ => ?_, fun h => absurd h (by omega), fun h => absurd h (by omega)⟩
    · rw [hr 0 (by omega) (by omega) (by omega)]; exact h1 (by omega)
    · simpa [x1 rfl] using hrd
  · refine ⟨fun _ => ?_, fun _ => ?_, fun _ => ?_, fun h => absurd h (by omega)⟩
    · rw [hr 0 (by omega) (by omega) (by omega)]; exact h1 (by omega)
    · rw [hr 8 (by omega) (by omega) (by omega)]; exact h2 (by omega)
    · simpa [x2 rfl] using hrd
  · refine ⟨fun _ => ?_, fun _ => ?_, fun _ => ?_, fun _ => ?_⟩
    · rw [hr 0 (by omega) (by omega) (by omega)]; exact h1 (by omega)
    · rw [hr 8 (by omega) (by omega) (by omega)]; exact h2 (by omega)
    · rw [hr 16 (by omega) (by omega) (by omega)]; exact h3 (by omega)
    · simpa [x3 rfl] using hrd

/-- One store into the offsets buffer. -/
theorem dp_so_gen {a : Act σ} (ha : ActOK a X) (hCb : a.Cb = Types.guestC) {k : Nat} (hk : k < 4)
    {Pv Lv Ar O1 O2 O3 O4 : BitVec 64} (hAr : Ar.toNat + 136 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {ea e : ExpHOL 64} {x : BitVec 64}
    (hea : ∀ (s : State σ) (W : BitVec 64), s.globals.lookup (nm "ssz_offs") = some (.val (.word W)) →
      ev s ea = some (.val (.word (W + BitVec.ofNat 64 (8 * k)))))
    (he : ∀ s : State σ, LC Pv Lv Ar O1 O2 O3 O4 s.locals → ev s e = some (.val (.word x)))
    (hxk : (k = 0 → x = O1) ∧ (k = 1 → x = O2) ∧ (k = 2 → x = O3) ∧ (k = 3 → x = O4)) :
    HoareG σ X (DI a Ar 136 (LC Pv Lv Ar O1 O2 O3 O4) (EKw (EB Pv Lv O1 O2 O3 O4 k) 136 Ar [(0, Pv)]))
      (.store ea e)
      (DQ a Ar 136 (LC Pv Lv Ar O1 O2 O3 O4) (EKw (EB Pv Lv O1 O2 O3 O4 (k + 1)) 136 Ar [(0, Pv)])) := by
  refine hoareG_stsDI' ha ?_ ?_ ?_
  · intro s hs hL Γ q hext hh _ w hw
    obtain ⟨W, hW, h8, hb, hc⟩ := glob_at ha hh (g := nm "ssz_offs") (n := 32)
      (hCb ▸ scalarGlob_ssz_offs)
    have hlk : s.globals.lookup (nm "ssz_offs") = some (.val (.word W)) := hW
    rw [hea s W hlk] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    have hse : scratchEnd < 2 ^ 64 := by decide
    have hwn : (W + BitVec.ofNat 64 (8 * k)).toNat = W.toNat + 8 * k := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega),
        Nat.mod_eq_of_lt (by omega)]
    exact hc _ ⟨by rw [hwn]; omega, by rw [hwn]; omega, by rw [hwn]; omega⟩
  · intro s hs hL v hv
    rw [he s hL] at hv
    exact ⟨x, (Option.some.inj hv).symm⟩
  · intro s Γ q w x' mem hs hL hw hv hrd hmem hov hE
    obtain ⟨⟨hΦ, W, hW, hEO⟩, hR⟩ := hE
    rw [hea s W hW] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    rw [he s hL] at hv
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
    subst hv
    exact ⟨⟨hΦ, W, hW, eo_step hk hxk hrd hmem hEO⟩, rk_other hAr hA8 hov hmem hR⟩


theorem dp_B {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
    (hC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tPL)])
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sfSig [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False))
    (hchk : CSumm σ X a.Cb a.H (nm "ssz_check_offsets") ⟨[.any, .any, .any, .any], [], [], false⟩ [])
    (hsplit : CSumm σ X a.Cb a.H (nm "ssz_split_var_list") (svSig false) [])
    (hLoc : FreshFoot σ X (nm "ssz_split_var_list") SvPre SvQ)
    (hsfc : CSumm σ X a.Cb a.H (nm "ssz_fixed_list_count") sfcSig [])
    {Ar : BitVec 64} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 136 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {Pv Lv O1 O2 O3 O4 : BitVec 64} (hobj : Hooks.SlObj a.Γ0 Pv Lv) :
    HoareG σ X (DI a Ar 136 (LC Pv Lv Ar O1 O2 O3 O4) (EKw (EB Pv Lv O1 O2 O3 O4 0) 136 Ar [(0, Pv)])) dpB
      (Node.NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hse := heapEnd_lt64
  have hAr := hs.2
  have hg0 : ∀ (s : State σ) (W : BitVec 64), s.globals.lookup (nm "ssz_offs") = some (.val (.word W)) →
      ev s (gv (nm "ssz_offs")) = some (.val (.word (W + BitVec.ofNat 64 (8 * 0)))) := by
    intro s W h
    rw [show ev s (gv (nm "ssz_offs")) = s.globals.lookup (nm "ssz_offs") from rfl, h]
    simp
  have hgk : ∀ (k : Nat) (hk : k < 4) (s : State σ) (W : BitVec 64),
      s.globals.lookup (nm "ssz_offs") = some (.val (.word W)) →
      ev s (.op .add [gv (nm "ssz_offs"), cw (8 * (k + 1))]) =
        some (.val (.word (W + BitVec.ofNat 64 (8 * (k + 1))))) := by
    intro k hk s W h
    exact ev_add2 (by rw [show ev s (gv (nm "ssz_offs")) = s.globals.lookup (nm "ssz_offs") from rfl, h])
      (ev_cw _ _)
  unfold dpB
  refine hoareG_seqDI (dp_so_gen ha hCb (k := 0) (by omega) hAr hA8 hg0
    (fun s hL => ev_lw hL.2.2.2.1) ⟨fun _ => rfl, by omega, by omega, by omega⟩) ?_
  refine hoareG_seqDI (dp_so_gen ha hCb (k := 1) (by omega) hAr hA8 (hgk 0 (by omega))
    (fun s hL => ev_lw hL.2.2.2.2.1) ⟨by omega, fun _ => rfl, by omega, by omega⟩) ?_
  refine hoareG_seqDI (dp_so_gen ha hCb (k := 2) (by omega) hAr hA8 (hgk 1 (by omega))
    (fun s hL => ev_lw hL.2.2.2.2.2.1) ⟨by omega, by omega, fun _ => rfl, by omega⟩) ?_
  refine hoareG_seqDI (dp_so_gen ha hCb (k := 3) (by omega) hAr hA8 (hgk 2 (by omega))
    (fun s hL => ev_lw hL.2.2.2.2.2.2) ⟨by omega, by omega, by omega, fun _ => rfl⟩) ?_
  refine hoareG_seqDI (E := EKw (fun _ _ _ _ => PhiC Pv Lv O2 O3 O4) 136 Ar [(0, Pv)]) ?_
    (dp_C' ha hX hC hCb hH hgr hret hfail hfr hsplit hLoc hsfc hs hA8 (Pv := Pv) (Lv := Lv)
      (O1 := O1) (O2 := O2) (O3 := O3) (O4 := O4) hobj)
  refine hoareG_callDI ha hchk (funSpec_ssz_check_offsetsN hX) (by simp) (by simp) (by simp) ?_ ?_
  · intro s hs' hL vs hvs
    have := evs_length hvs
    simp at this
    simp [this]
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc co hB hE
    obtain ⟨⟨⟨hΦ1, hΦ2, hΦ3⟩, W, hW, hEO⟩, hR⟩ := hE
    rw [evs_cons (by rw [show ev s (gv (nm "ssz_offs")) = s.globals.lookup (nm "ssz_offs") from rfl, hW])
      (evs_cons (ev_cw _ 4) (evs_cons (ev_cw _ 540) (evs_cons (ev_lw hL.2.1) evs_nil)))] at hvs
    cases hvs
    obtain ⟨-, -, hco⟩ := hLc v rfl W (BitVec.ofNat 64 4) (BitVec.ofNat 64 540) Lv rfl (by decide) (by decide)
    obtain ⟨-, h2, h3, h4⟩ := hEO
    have e2 : rd s.memory (W + BitVec.ofNat 64 (8 * 1)) = O2 := h2 (by omega)
    have e3 : rd s.memory (W + BitVec.ofNat 64 (8 * 2)) = O3 := h3 (by omega)
    have e4 : rd s.memory (W + BitVec.ofNat 64 (8 * 3)) = O4 := h4 (by omega)
    have c2 := hco 2 (by decide)
    have c3 := hco 3 (by decide)
    simp only [show (2 : Nat) - 1 = 1 from rfl, show (3 : Nat) - 1 = 2 from rfl] at c2 c3
    have c2' : (rd s.memory (W + BitVec.ofNat 64 (8 * 2))).toNat ≤ Lv.toNat ∧
        (rd s.memory (W + BitVec.ofNat 64 (8 * 1))).toNat ≤
          (rd s.memory (W + BitVec.ofNat 64 (8 * 2))).toNat := ⟨c2.1, c2.2 (by omega)⟩
    have c3' : (rd s.memory (W + BitVec.ofNat 64 (8 * 3))).toNat ≤ Lv.toNat ∧
        (rd s.memory (W + BitVec.ofNat 64 (8 * 2))).toNat ≤
          (rd s.memory (W + BitVec.ofNat 64 (8 * 3))).toNat := ⟨c3.1, c3.2 (by omega)⟩
    rw [e2, e3] at c2'
    rw [e3, e4] at c3'
    exact ⟨⟨c2'.2, c2'.1, hΦ1, hΦ2, c3'.2, c3'.1, hΦ3⟩, rk_call co hAr hA8 hB hR⟩


/-- The pure facts and the global of the start. -/
def EA (Pv Lv : BitVec 64) (_Γ : Gam) (_q : Ptrs) (_m : Mem) (g : LocalsH) : Prop :=
  (heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ heapEnd ∧ 540 ≤ Lv.toNat) ∧
    ∃ W : BitVec 64, g.lookup (nm "ssz_offs") = some (.val (.word W))

theorem dp_B' {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
    (hC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tPL)])
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sfSig [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False))
    (hchk : CSumm σ X a.Cb a.H (nm "ssz_check_offsets") ⟨[.any, .any, .any, .any], [], [], false⟩ [])
    (hsplit : CSumm σ X a.Cb a.H (nm "ssz_split_var_list") (svSig false) [])
    (hLoc : FreshFoot σ X (nm "ssz_split_var_list") SvPre SvQ)
    (hsfc : CSumm σ X a.Cb a.H (nm "ssz_fixed_list_count") sfcSig [])
    {Ar : BitVec 64} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 136 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {Pv Lv O1 O2 O3 O4 : BitVec 64} (hobj : Hooks.SlObj a.Γ0 Pv Lv) :
    HoareG σ X (DI a Ar 136 (LC Pv Lv Ar O1 O2 O3 O4) (EKw (EA Pv Lv) 136 Ar [(0, Pv)])) dpB
      (Node.NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  intro s hs' hP hg
  obtain ⟨hL, Γ, q, he, hh, hB, hn, ⟨hΦ, W, hW⟩, hR⟩ := hP
  exact dp_B ha hX hC hCb hH hgr hret hfail hfr hchk hsplit hLoc hsfc hs hA8 hobj s hs'
    ⟨hL, Γ, q, he, hh, hB, hn, ⟨hΦ, W, hW, fun h => absurd h (by omega), fun h => absurd h (by omega),
      fun h => absurd h (by omega), fun h => absurd h (by omega)⟩, hR⟩ hg

end InitECandidate.Solver.MemSafe.Rec
