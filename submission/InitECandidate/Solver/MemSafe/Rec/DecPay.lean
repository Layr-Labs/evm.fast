import InitECandidate.Solver.MemSafe.Rec.DecPayA
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Rec.SplitTab
import InitECandidate.Solver.MemSafe.Bn2.Submul
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `decode_payload`: the hand summary

**`sumSpecA_decode_payload`**: `SumSpecA … (nm "decode_payload") dpSig DpPre (fun … => False) (fun … => True)` at
`guestHooksR`, where

* `dpSig = ⟨[any, any], [fits (ptr tPL)], [], true⟩`: the result is a `tPL` object of `Γ'`, and the record hook of
  `guestHooksR` (`plD`: `PlW`, i.e. `136 ≤ size`, the slice array is a `tSLA` object, every transaction slice
  lies in the heap with length `< 2^32`) holds at the end state (`G`);
* `DpPre`: `heapBase ≤ p`, `p + len ≤ heapEnd`, and `[p, p + len)` lies in a `tVAL` object of `Γ`
  (`Hooks.SlObj`: the adopted input blob). The hook then also records `SlObj` for every transaction slice, the fee
  recipient `[raw + 32, + 20)` and the withdrawal array `[wd, wd + 44 n)` (`n` by `funSpec_sfc_val`).

Callee facts used: `ssz_fail`, `ssz_check_offsets`, `ssz_fixed_list_count` from the fold (`tab26_guestR`),
`ssz_split_var_list` (`svTab_sound`, located `freshFoot_ssz_split_var_list`), `alloc` (built in),
`funSpec_ssz_check_offsets` (value spec).
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (SIn ev_rfield_w FreshFoot)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA)
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

def dpSig : Sig := ⟨[.any, .any], [.fits (.ptr tPL)], [], true⟩

def LP0' (Pv Lv : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word Pv)) ∧ m.lookup (nm "len") = some (.val (.word Lv))

def DpPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ p len : BitVec 64, vs = [.val (.word p), .val (.word len)] ∧ heapBase ≤ p.toNat ∧
    p.toNat + len.toNat ≤ heapEnd ∧ Hooks.SlObj Γ p len


theorem di_start {a : Act σ} (ha : ActOK a X) (hCb : a.Cb = Types.guestC) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {t : State σ} {Pv Lv : BitVec 64} (hL : L t.locals)
    (hB : BlkH a Ar n t) (hΦ : heapBase ≤ Pv.toNat ∧ Pv.toNat + Lv.toNat ≤ heapEnd ∧ 540 ≤ Lv.toNat) :
    DI a Ar n L (EKw (EA Pv Lv) n Ar []) t := by
  obtain ⟨Γ, q, he, hh, hF, hn⟩ := hB
  obtain ⟨W, hW, -⟩ := glob_at ha hh (g := nm "ssz_offs") (n := 32) (hCb ▸ scalarGlob_ssz_offs)
  exact ⟨hL, Γ, q, he, hh, hF, hn, ⟨hΦ, W, hW⟩, rk_nil _ _ _⟩

theorem sumSpecA_decode_payload (hF : FoldOK σ X Types.guestC (Hooks.guestHooksR (σ := σ)))
    (htab : CTabSound σ X Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26) :
    SumSpecA σ X Types.guestC Hooks.guestHooksR (nm "decode_payload") dpSig DpPre
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have hfail : CSumm σ X Types.guestC Hooks.guestHooksR (nm "ssz_fail") sfSig [] :=
    ctab% htab
  have hchk : CSumm σ X Types.guestC Hooks.guestHooksR (nm "ssz_check_offsets")
      ⟨[.any, .any, .any, .any], [], [], false⟩ [] :=
    ctab% htab
  have hsfc : CSumm σ X Types.guestC Hooks.guestHooksR (nm "ssz_fixed_list_count") sfcSig [] :=
    ctab% htab
  have hsplit : CSumm σ X Types.guestC Hooks.guestHooksR (nm "ssz_split_var_list")
      (svSig false) [] :=
    svTab_sound hF hfail _ _ _ (by simp [svTab])
  have hLoc := freshFoot_ssz_split_var_list (σ := σ) hX
  have hfr := funRet_ssz_fail (σ := σ) hX
  have halloc : CSumm σ X Types.guestC Hooks.guestHooksR (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, Bv, rfl, hsA, hsB, hlA, hlB⟩ := lookupCode_two code_decode_payload
    (by decide) hl
  obtain ⟨Pv, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Lv, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Pv', Lv', hvs, hP, hPL, hobj⟩ := hpre
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  set a := actOf Types.guestC Hooks.guestHooksR dpSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0
    with hadef
  have haC : a.C = Types.guestC := rfl
  have haCb : a.Cb = Types.guestC := rfl
  have haH : a.H = Hooks.guestHooksR := rfl
  have hgr : a.sg.grows = true := rfl
  have hret : a.sg.ret = [.fits (.ptr tPL)] := rfl
  refine hoareG_conseq (P := PreH a (LP0' Pv Lv))
    (Q := Node.NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨?_, Γ0, p0, ext_refl _, hh⟩
    refine ⟨?_, ?_⟩ <;> rw [hloc] <;> assumption
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    exact ⟨Γ', p', he, hh', hv⟩
  unfold dpBody
  refine hoareG_seq (hoareG_sFail ha hfail hfr (by simp [sfSig]) (by simp [sfSig])
    (by simp [sfSig]) (P := PreH a (LP0' Pv Lv)) (fun t h => h.2)
    (c := .cmp .lower (lv (nm "len")) (cw 540)) (k := 50))
    (fun r t _ hr _ h => Node.nq_of_abn r t hr h.2) ?_
  refine hoareG_pre (P := fun t => PreH a (LP0' Pv Lv) t ∧ 540 ≤ Lv.toNat) ?_ (fun t _ h => by
    obtain ⟨hP0, hc⟩ := h.1 rfl
    refine ⟨hP0, ?_⟩
    have := lower_false (cmp_val_false hc (ev_lw hP0.1.2) (ev_cw _ 540))
    simpa using this)
  intro s0' hs0' ⟨hP0', h540⟩ hg0'
  refine Node.hoareG_allocN ha hAS halloc (SZ := BitVec.ofNat 64 136)
    (L' := fun Ar m => LP0 Pv Lv Ar m) (fun s _ _ => ev_cw _ 136) ?_ ?_ s0' hs0' hP0' hg0'
  · intro s st Ar hL
    obtain ⟨h1, h2⟩ := hL
    refine ⟨?_, ?_, lk_set_self _ _ _⟩ <;> rw [lk_set_ne _ _ (by decide)] <;> assumption
  · intro Ar hArn hstat
    obtain ⟨hs1, hs2, hs3⟩ := hstat
    have h136 : (BitVec.ofNat 64 136).toNat = 136 := rfl
    rw [h136] at hs2
    refine hoareG_conseq (P := DI a Ar 136 (LP0 Pv Lv Ar) (EKw (EA Pv Lv) 136 Ar []))
      (dp_A ha hX haC haCb haH hgr hret hfail hfr hchk hsplit hLoc hsfc ⟨hs1, hs2⟩ hs3
        (Pv := Pv) (Lv := Lv) hobj) ?_ (fun r t _ _ h => h)
    intro t _ ⟨hL, hB⟩
    exact di_start ha haCb hL hB ⟨hP, hPL, h540⟩


/-- **`decode_payload` at the challenge context and the record family `guestHooksR`.** -/
theorem sumSpecA_decode_payload_guestR {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_payload") dpSig DpPre
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpecA_decode_payload foldOK_guestR tab26_guestR

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_payload
#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_payload_guestR
