import InitECandidate.Solver.MemSafe.Rec.DecPayE
import InitECandidate.Solver.MemSafe.Rec.Count

set_option autoImplicit false

/-!
# `decode_payload`: the stores of the slice array, `ssz_fixed_list_count`, and the rest (`dpD`)
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (SIn ev_rfield_w)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA)
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

/-- The locals after the split call. -/
def LD (Pv Lv Ar O3 O4 arr cnt : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word Pv)) ∧ m.lookup (nm "len") = some (.val (.word Lv)) ∧
    m.lookup (nm "pl") = some (.val (.word Ar)) ∧ m.lookup (nm "o_wd") = some (.val (.word O3)) ∧
    m.lookup (nm "o_bal") = some (.val (.word O4)) ∧
    m.lookup (nm "txs") = some (.rStruct [.val (.word arr), .val (.word cnt)])

def sfcSig : Sig := ⟨[.any, .any, .any], [], [], false⟩

/-- The withdrawal facts from the count. -/
theorem wd_facts {Γ : Gam} {Pv Lv O3 O4 Nw : BitVec 64} (hb : Pv.toNat + Lv.toNat ≤ heapEnd)
    (h34 : O3.toNat ≤ O4.toNat) (h4L : O4.toNat ≤ Lv.toNat) (hobj : Hooks.SlObj Γ Pv Lv)
    (hQ : Nw.toNat * (BitVec.ofNat 64 44).toNat = (O4 - O3).toNat) :
    Nw.toNat < 2 ^ 32 ∧ Hooks.SlObj Γ (Pv + O3) (BitVec.ofNat 64 (44 * Nw.toNat)) := by
  have hse : heapEnd < 2 ^ 32 := by decide
  have h44 : (BitVec.ofNat 64 44).toNat = 44 := rfl
  rw [h44] at hQ
  have hsub : (O4 - O3).toNat = O4.toNat - O3.toNat := by rw [BitVec.toNat_sub]; omega
  rw [hsub] at hQ
  have hN : Nw.toNat < 2 ^ 32 := by omega
  refine ⟨hN, ?_⟩
  obtain ⟨x, hx, ht, h1, h2⟩ := hobj
  have e1 : (Pv + O3).toNat = Pv.toNat + O3.toNat := by
    rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by omega)
  have e2 : (BitVec.ofNat 64 (44 * Nw.toNat)).toNat = 44 * Nw.toNat := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  refine ⟨x, hx, ht, ?_, ?_⟩
  · rw [e1]; omega
  · rw [e1, e2]; omega

theorem dp_D {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
    (hC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tPL)])
    (hsfc : CSumm σ X a.Cb a.H (nm "ssz_fixed_list_count") sfcSig [])
    {Ar : BitVec 64} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 136 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {Pn Nn : Nat} {arr cnt Pv Lv O3 O4 : BitVec 64}
    (hx : ObjN a.Γ0 Pn Nn) (hobj : Hooks.SlObj a.Γ0 Pv Lv)
    (hfee : Hooks.SlObj a.Γ0 (Pv + BitVec.ofNat 64 32) (BitVec.ofNat 64 20))
    (hb : Pv.toNat + Lv.toNat ≤ heapEnd) (h34 : O3.toNat ≤ O4.toNat) (h4L : O4.toNat ≤ Lv.toNat) :
    HoareG σ X (DI a Ar 136 (LD Pv Lv Ar O3 O4 arr cnt) (EKw (Ew (ES Pn Nn arr cnt)) 136 Ar [(0, Pv)])) dpD
      (Node.NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hse := heapEnd_lt64
  have hAr := hs.2
  have hpl : ∀ m, LD Pv Lv Ar O3 O4 arr cnt m → m.lookup (nm "pl") = some (.val (.word Ar)) :=
    fun m h => h.2.2.1
  unfold dpD
  refine hoareG_seqDI (dp_st_addK ha hAr (k := 32) (j := 4) (by decide) (by decide) hpl
    (x := arr) (fun s _ hL => ev_rfield_w hL.2.2.2.2.2 (i := 0) (w := arr) rfl)
    (by simp) (es_st hAr hA8 (by decide))) ?_
  refine hoareG_seqDI (dp_st_addK ha hAr (k := 40) (j := 5) (by decide) (by decide) hpl
    (x := cnt) (fun s _ hL => ev_rfield_w hL.2.2.2.2.2 (i := 1) (w := cnt) rfl)
    (by simp) (es_st hAr hA8 (by decide))) ?_
  refine hoareG_decCallDI (E := EKw (Ew (ES Pn Nn arr cnt)) 136 Ar [(5, cnt), (4, arr), (0, Pv)])
    (L := LD Pv Lv Ar O3 O4 arr cnt)
    (L' := fun v m => ∃ Nw : BitVec 64, v = .val (.word Nw) ∧ LE Pv Lv Ar O3 O4 Nw m)
    (E' := fun v Γ q m g => EKw (Ew (ES Pn Nn arr cnt)) 136 Ar [(5, cnt), (4, arr), (0, Pv)] Γ q m g ∧
      ∃ Nw : BitVec 64, v = .val (.word Nw) ∧ Nw.toNat * (BitVec.ofNat 64 44).toNat = (O4 - O3).toNat)
    ha hsfc (funSpec_sfc_val hX) (by simp [sfcSig])
    (by simp [sfcSig]) (by simp [sfcSig]) ?_ ?_ ?_ ?_
  · intro s hs' hL vs hvs
    rw [evs_cons (ev_sub2 (ev_lw hL.2.2.2.2.1) (ev_lw hL.2.2.2.1))
      (evs_cons (ev_cw _ 44) (evs_cons (ev_cw _ 9223372036854775807) evs_nil))] at hvs
    cases hvs
    rfl
  · intro s st v hL hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨h1, h2, h3, h4, h5, -⟩ := hL
    refine ⟨w, rfl, ?_, ?_, ?_, ?_, ?_, lk_set_self _ _ _⟩ <;>
      rw [lk_set_ne _ _ (by decide)] <;> assumption
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co hsh
    rw [evs_cons (ev_sub2 (ev_lw hL.2.2.2.2.1) (ev_lw hL.2.2.2.1))
      (evs_cons (ev_cw _ 44) (evs_cons (ev_cw _ 9223372036854775807) evs_nil))] at hvs
    cases hvs
    obtain ⟨Q, rfl, hQ⟩ := hLc v rfl (O4 - O3) (BitVec.ofNat 64 44) (BitVec.ofNat 64 9223372036854775807)
      rfl (by decide) (by decide)
    exact ⟨Γ', q', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB,
      ⟨es_call hCb hC co hE.1, rk_call co hAr hA8 hB hE.2⟩, Q, rfl, hQ⟩
  · intro v s hs' hP hg
    obtain ⟨⟨Nw, hv, hLE⟩, Γ, q, he, hh, hB, hn, hE, Nw', hv', hQ⟩ := hP
    rw [hv] at hv'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv'
    subst hv'
    obtain ⟨hN, hwd⟩ := wd_facts (Γ := a.Γ0) hb h34 h4L hobj hQ
    exact dp_E ha hC hH hgr hret hs hA8 hx hfee hN hwd s hs' ⟨hLE, Γ, q, he, hh, hB, hn, hE⟩ hg

end InitECandidate.Solver.MemSafe.Rec
