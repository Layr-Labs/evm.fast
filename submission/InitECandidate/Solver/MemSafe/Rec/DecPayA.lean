import InitECandidate.Solver.MemSafe.Rec.DecPayB

set_option autoImplicit false

/-!
# `decode_payload`: the first stores, the four offsets, and the whole body after the allocation
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

theorem hoareG_exDI {α : Type} {a : Act σ} {Ar : BitVec 64} {n : Nat} {L : α → LocalsH → Prop}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} {k : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ x, HoareG σ X (DI a Ar n (L x) E) k Q) :
    HoareG σ X (DI a Ar n (fun m => ∃ x, L x m) E) k Q := by
  intro s hs hP hg
  obtain ⟨⟨x, hx⟩, rest⟩ := hP
  exact h x s hs ⟨hx, rest⟩ hg

/-- A store whose value is a word, with a memory-independent client predicate. -/
theorem dp_st_free {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64}
    (hAr : Ar.toNat + 136 ≤ heapEnd) {k : Nat} (hk8 : k % 8 = 0) (hk : k + 8 ≤ 136)
    {L : LocalsH → Prop} (hpl : ∀ m, L m → m.lookup (nm "pl") = some (.val (.word Ar)))
    {e : ExpHOL 64}
    (hval : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      ∃ x, v = .val (.word x)) {E : Gam → Ptrs → Mem → LocalsH → Prop}
    (hEm : ∀ Γ q m m' g, E Γ q m g → E Γ q m' g) :
    HoareG σ X (DI a Ar 136 L E) (dpSt k e) (DQ a Ar 136 L E) := by
  have hse := heapEnd_lt64
  unfold dpSt
  refine hoareG_stDI ha (by omega) ?_ hval ?_
  · intro s hs hL w hw
    rw [ev_add2 (ev_lw (hpl _ hL)) (ev_cw _ k)] at hw
    cases hw
    exact ⟨k / 8, by omega, by congr 2; omega⟩
  · intro s Γ q j x mem hs hL hj ha' hv' hrd hmem hB hE
    exact hEm _ _ _ _ _ hE

/-- The locals after each `var o_* = LD_LE32(..)`. -/
def LA1 (Pv Lv Ar O1 : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word Pv)) ∧ m.lookup (nm "len") = some (.val (.word Lv)) ∧
    m.lookup (nm "pl") = some (.val (.word Ar)) ∧ m.lookup (nm "o_extra") = some (.val (.word O1))

def LA2 (Pv Lv Ar O1 O2 : BitVec 64) (m : LocalsH) : Prop :=
  LA1 Pv Lv Ar O1 m ∧ m.lookup (nm "o_txs") = some (.val (.word O2))

def LA3 (Pv Lv Ar O1 O2 O3 : BitVec 64) (m : LocalsH) : Prop :=
  LA2 Pv Lv Ar O1 O2 m ∧ m.lookup (nm "o_wd") = some (.val (.word O3))

def LP0 (Pv Lv Ar : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word Pv)) ∧ m.lookup (nm "len") = some (.val (.word Lv)) ∧
    m.lookup (nm "pl") = some (.val (.word Ar))

theorem lc_of_la {Pv Lv Ar O1 O2 O3 O4 : BitVec 64} {m : LocalsH}
    (h : LA3 Pv Lv Ar O1 O2 O3 m ∧ m.lookup (nm "o_bal") = some (.val (.word O4))) :
    LC Pv Lv Ar O1 O2 O3 O4 m := by
  obtain ⟨⟨⟨⟨h1, h2, h3, h4⟩, h5⟩, h6⟩, h7⟩ := h
  exact ⟨h1, h2, h3, h4, h5, h6, h7⟩


theorem dp_A {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
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
    {Pv Lv : BitVec 64} (hobj : Hooks.SlObj a.Γ0 Pv Lv) :
    HoareG σ X (DI a Ar 136 (LP0 Pv Lv Ar) (EKw (EA Pv Lv) 136 Ar [])) dpA
      (Node.NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hse := heapEnd_lt64
  have hAr := hs.2
  have hpl : ∀ m, LP0 Pv Lv Ar m → m.lookup (nm "pl") = some (.val (.word Ar)) := fun m h => h.2.2
  have hEm : ∀ (Γ : Gam) (q : Ptrs) (m mem : Mem) (g : LocalsH),
      (∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * 0) → mem y = m y) → BlkF Ar 136 Γ q →
      EA Pv Lv Γ q m g → EA Pv Lv Γ q mem g := fun _ _ _ _ _ _ _ h => h
  have hEm1 : ∀ (Γ : Gam) (q : Ptrs) (m mem : Mem) (g : LocalsH),
      (∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * 1) → mem y = m y) → BlkF Ar 136 Γ q →
      EA Pv Lv Γ q m g → EA Pv Lv Γ q mem g := fun _ _ _ _ _ _ _ h => h
  unfold dpA
  refine hoareG_seqDI (dp_st_addK ha hAr (k := 0) (j := 0) (by decide) (by decide) hpl (x := Pv)
    (fun s _ hL => ev_lw hL.1) (by simp) hEm) ?_
  refine hoareG_seqDI (dp_st_keepK ha hAr (k := 8) (j := 1) (by decide) (by decide) hpl
    (fun s _ hL v hv => ⟨_, by rw [ev_lw hL.2.1] at hv; exact (Option.some.inj hv).symm⟩)
    (by simp) hEm1) ?_
  refine hoareG_decDI ha.hH (L' := fun m => ∃ O1, LA1 Pv Lv Ar O1 m) ?_ ?_
  · intro s _ hL v hv
    obtain ⟨O, rfl, -⟩ := ev_le32 hv
    obtain ⟨h1, h2, h3⟩ := hL
    refine ⟨O, ?_, ?_, ?_, lk_set_self _ _ _⟩ <;> rw [lk_set_ne _ _ (by decide)] <;> assumption
  refine hoareG_exDI fun O1 => ?_
  refine hoareG_decDI ha.hH (L' := fun m => ∃ O2, LA2 Pv Lv Ar O1 O2 m) ?_ ?_
  · intro s _ hL v hv
    obtain ⟨O, rfl, -⟩ := ev_le32 hv
    obtain ⟨h1, h2, h3, h4⟩ := hL
    refine ⟨O, ⟨?_, ?_, ?_, ?_⟩, lk_set_self _ _ _⟩ <;> rw [lk_set_ne _ _ (by decide)] <;> assumption
  refine hoareG_exDI fun O2 => ?_
  refine hoareG_decDI ha.hH (L' := fun m => ∃ O3, LA3 Pv Lv Ar O1 O2 O3 m) ?_ ?_
  · intro s _ hL v hv
    obtain ⟨O, rfl, -⟩ := ev_le32 hv
    obtain ⟨⟨h1, h2, h3, h4⟩, h5⟩ := hL
    refine ⟨O, ⟨⟨?_, ?_, ?_, ?_⟩, ?_⟩, lk_set_self _ _ _⟩ <;>
      rw [lk_set_ne _ _ (by decide)] <;> assumption
  refine hoareG_exDI fun O3 => ?_
  refine hoareG_decDI ha.hH (L' := fun m => ∃ O4, LC Pv Lv Ar O1 O2 O3 O4 m) ?_ ?_
  · intro s _ hL v hv
    obtain ⟨O, rfl, -⟩ := ev_le32 hv
    obtain ⟨⟨⟨h1, h2, h3, h4⟩, h5⟩, h6⟩ := hL
    refine ⟨O, ?_, ?_, ?_, ?_, ?_, ?_, lk_set_self _ _ _⟩ <;>
      rw [lk_set_ne _ _ (by decide)] <;> assumption
  refine hoareG_exDI fun O4 => ?_
  exact dp_B' ha hX hC hCb hH hgr hret hfail hfr hchk hsplit hLoc hsfc hs hA8 hobj

end InitECandidate.Solver.MemSafe.Rec
