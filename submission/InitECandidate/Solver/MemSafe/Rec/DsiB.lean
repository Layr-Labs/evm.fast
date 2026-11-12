import InitECandidate.Solver.MemSafe.Rec.DsiC
import InitECandidate.Solver.MemSafe.Rec.DecPay

set_option autoImplicit false

/-!
# `decode_stateless_input`: the calls and stores (`dsB`)

`decode_payload` (the hand summary, `DpPre` from the offset ordering), `st si + 0, pl`,
`ssz_fixed_list_count`, three stores, `decode_requests`, `st si + 32, rq`, then `dsC`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA tSI)
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)

variable {σ : Type} {X : Ctx 64}

theorem plo_of_heap {a : Act σ} (ha : ActOK a X) (hH : a.H = Hooks.guestHooksR) {Γ : Gam} {q : Ptrs}
    {s : State σ} (hh : Heap a Γ q s) {w : BitVec 64} (ho : ∃ o ∈ Γ, o.base = w ∧ o.ty = tPL) :
    PlO Γ w := by
  obtain ⟨o, hoΓ, hb, ht⟩ := ho
  obtain ⟨p, -, -, -, -, -, -, hW⟩ := heap_G ha hh
  have hw := hW o hoΓ
  rw [hH] at hw
  obtain ⟨-, -, h1, h2, -⟩ := Hooks.plW_of_wf ht hw
  have hlo : o.lo = w.toNat := by unfold Obj.lo; rw [hb]
  exact ⟨o, hoΓ, hb, ht, h1, by omega⟩

def reqSig : Sig := ⟨[.any, .any], [], [], false⟩

/-- The pure facts at the call of `decode_payload`. -/
def PhiB (NP NL B1 B2 B3 : BitVec 64) : Prop :=
  (heapBase ≤ NP.toNat ∧ NP.toNat + NL.toNat ≤ heapEnd) ∧
    B1.toNat ≤ B2.toNat ∧ B2.toNat ≤ B3.toNat ∧ B3.toNat ≤ NL.toNat

def kvB (Ar NP NL B1 B2 B3 P2 L2 O2 : BitVec 64) : List (MlS × BitVec 64) :=
  [(nm "si", Ar), (nm "np", NP), (nm "nlen", NL), (nm "o_pl", B1), (nm "o_vh", B2), (nm "o_rq", B3),
    (nm "p", P2), (nm "len", L2), (nm "o_wit", O2)]

theorem ds_B {a : Act σ} (ha : ActOK a X) (hX : X.code.lookup = guestCode)
    (hC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tSI)])
    (hpay : SumSpecA σ X a.Cb a.H (nm "decode_payload") dpSig DpPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True))
    (hsfc : CSumm σ X a.Cb a.H (nm "ssz_fixed_list_count") sfcSig [])
    (hreq : CSumm σ X a.Cb a.H (nm "decode_requests") reqSig [])
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sfSig [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False))
    (hchk : CSumm σ X a.Cb a.H (nm "ssz_check_offsets") chkSig [])
    (hdbl : CSumm σ X a.Cb a.H (nm "decode_bytes_list") dblSig [])
    {Ar : BitVec 64} (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 96 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {NP NL B1 B2 B3 P2 L2 O2 : BitVec 64} (hobjNP : ObjN a.Γ0 NP.toNat NL.toNat)
    (hobjW : ObjN a.Γ0 (P2 + O2).toNat (L2 - O2).toNat)
    (hWb : heapBase ≤ (P2 + O2).toNat) (hWe : (P2 + O2).toNat + (L2 - O2).toNat ≤ heapEnd) :
    HoareG σ X (DI a Ar 96 (LK (kvB Ar NP NL B1 B2 B3 P2 L2 O2))
      (EJ (PhiB NP NL B1 B2 B3) Ar none CzT)) dsB
      (NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hse := heapEnd_lt64
  have hov0 : ∀ pl', (none : Option (BitVec 64)) = some pl' → Overlap Ar.toNat 96 Ar :=
    fun _ h => by cases h
  unfold dsB
  refine hoareG_decCallPre (L := LK (kvB Ar NP NL B1 B2 B3 P2 L2 O2))
    (E := EJ (PhiB NP NL B1 B2 B3) Ar none CzT)
    (L' := fun v => LK ((nm "pl", wd v) :: kvB Ar NP NL B1 B2 B3 P2 L2 O2))
    (E' := fun v Γ q m g => EJ (PhiB NP NL B1 B2 B3) Ar none CzT Γ q m g ∧ PlO Γ (wd v))
    ha hpay (by simp [dpSig]) (by simp [dpSig]) (fun _ => hgr) ?_ ?_ ?_ ?_ ?_
  · intro s _ _ vs hvs
    have := evs_length hvs
    simp at this
    simp [dpSig, this]
  · intro s st v hL hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    exact lk_set (s := { st with locals := s.locals }) hL w (by simp [kvB]; decide)
  · intro s vs Γ q hs' hL hvs hh hE s'
    rw [evs_cons (ev_add2 (ev_lw (lk_get hL (x := nm "np") (w := NP) (by simp [kvB])))
        (ev_lw (lk_get hL (x := nm "o_pl") (w := B1) (by simp [kvB]))))
      (evs_cons (ev_sub2 (ev_lw (lk_get hL (x := nm "o_vh") (w := B2) (by simp [kvB])))
        (ev_lw (lk_get hL (x := nm "o_pl") (w := B1) (by simp [kvB])))) evs_nil)] at hvs
    cases hvs
    obtain ⟨⟨⟨hb, hsum⟩, h12, h23, h3L⟩, -, -⟩ := hE
    have e1 : (NP + B1).toNat = NP.toNat + B1.toNat := by
      rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by omega)
    have e2 : (B2 - B1).toNat = B2.toNat - B1.toNat := by rw [BitVec.toNat_sub]; omega
    have hw := objN_win hobjNP hsum h12 (by omega : B2.toNat ≤ NL.toNat)
    exact ⟨NP + B1, B2 - B1, rfl, by omega, by omega, slObj_of_objN (objN_ext hh.2.2.2.1 hw.1)⟩
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs he hh hB hn hE co hr hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    refine ⟨Γ', q', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB, ej_call ha hCb co hB hov0 hE, ?_⟩
    have := hr 0 (.fits (.ptr tPL)) w (by simp [dpSig]) (by simp [flattenHOL])
    exact plo_of_heap ha hH co.heap this
  · intro v
    generalize wd v = plw
    have hovS : ∀ pl', (some plw : Option (BitVec 64)) = some pl' → Overlap Ar.toNat 96 Ar :=
      fun _ _ => ⟨hA8, by omega, by omega⟩
    have hsi : ∀ m, LK ((nm "pl", plw) :: kvB Ar NP NL B1 B2 B3 P2 L2 O2) m →
        m.lookup (nm "si") = some (.val (.word Ar)) :=
      fun m hm => lk_get hm (x := nm "si") (w := Ar) (by simp [kvB])
    refine hoareG_seqDI (ds_st_pl ha hs.2 hsi (x := plw)
      (fun m hm => lk_get hm (x := nm "pl") (w := plw) (by simp)) (Φ := PhiB NP NL B1 B2 B3)) ?_
    refine ds_call1 ha hCb hovS hsfc (by simp [sfcSig]) (by simp [sfcSig]) (by simp [sfcSig])
      ?_ (x := nm "nvh") (by simp only [kvB]; nmne) ?_
    · intro s _ _ vs hvs
      have := evs_length hvs
      simp at this
      simp [sfcSig, this]
    intro nvh
    have hsi2 : ∀ m, LK ((nm "nvh", nvh) :: (nm "pl", plw) :: kvB Ar NP NL B1 B2 B3 P2 L2 O2) m →
        m.lookup (nm "si") = some (.val (.word Ar)) :=
      fun m hm => lk_get hm (x := nm "si") (w := Ar) (by simp [kvB])
    refine hoareG_seqDI (ds_st_keep ha hs.2 (by decide) (by decide) (by decide) hsi2
      (fun s _ _ v hv => ev_op_word hv)) ?_
    refine hoareG_seqDI (ds_st_keep ha hs.2 (by decide) (by decide) (by decide) hsi2 ?_) ?_
    · intro s _ hL v hv
      rw [ev_lw (lk_get hL (x := nm "nvh") (w := nvh) (by simp))] at hv
      exact ⟨_, (Option.some.inj hv).symm⟩
    refine hoareG_seqDI (ds_st_keep ha hs.2 (by decide) (by decide) (by decide) hsi2
      (fun s _ _ v hv => ev_op_word hv)) ?_
    refine ds_call1 ha hCb hovS hreq (by simp [reqSig]) (by simp [reqSig]) (by simp [reqSig])
      ?_ (x := nm "rq") (by simp only [kvB]; nmne) ?_
    · intro s _ _ vs hvs
      have := evs_length hvs
      simp at this
      simp [reqSig, this]
    intro rq
    have hsi3 : ∀ m, LK ((nm "rq", rq) :: (nm "nvh", nvh) :: (nm "pl", plw) ::
        kvB Ar NP NL B1 B2 B3 P2 L2 O2) m → m.lookup (nm "si") = some (.val (.word Ar)) :=
      fun m hm => lk_get hm (x := nm "si") (w := Ar) (by simp [kvB])
    refine hoareG_seqDI (ds_st_keep ha hs.2 (by decide) (by decide) (by decide) hsi3 ?_) ?_
    · intro s _ hL v hv
      rw [ev_lw (lk_get hL (x := nm "rq") (w := rq) (by simp))] at hv
      exact ⟨_, (Option.some.inj hv).symm⟩
    refine hoareG_pre (ds_C ha hX hC hCb hH hgr hret hfail hfr hchk hdbl hs hA8
      (P2 := P2) (L2 := L2) (O2 := O2) (pl := plw) (Φ := PhiB NP NL B1 B2 B3) hobjW hWb hWe) ?_
    intro t _ h
    exact di_mono (fun m hm => lk_sub hm (by intro q hq; simp at hq ⊢; simp [kvB]; tauto))
      (fun _ _ _ _ h => h) h

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.ds_B
