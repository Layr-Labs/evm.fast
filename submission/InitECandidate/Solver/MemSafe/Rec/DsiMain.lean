import InitECandidate.Solver.MemSafe.Rec.DsiTop
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `decode_stateless_input`: the hand summary

**`sumSpecA_decode_stateless_input_guestR`**:
`SumSpecA σ guestCtx guestC guestHooksR (nm "decode_stateless_input") dsSig DsPre (fun … => False) (fun … => True)`
with

* `dsSig = ⟨[any, any], [fits (ptr tSI)], [], true⟩`: the result is a `tSI` object of `Γ'` whose
  slot 0 is the payload record, a `tPL` object (the `siD` hook of `guestHooksR`);
* `DsPre`: `heapBase ≤ p`, `p + len ≤ heapEnd`, and `[p, p + len)` lies in a `tVAL` object of `Γ` (the adopted
  input blob, `Hooks.SlObj`); the payload's and the witness lists' slices then lie in it too (`PlW`, `SiW`).
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA tSI)
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

def dsSig : Sig := ⟨[.any, .any], [.fits (.ptr tSI)], [], true⟩

def DsPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ p len : BitVec 64, vs = [.val (.word p), .val (.word len)] ∧ heapBase ≤ p.toNat ∧
    p.toNat + len.toNat ≤ heapEnd ∧ Hooks.SlObj Γ p len

theorem sumSpecA_decode_stateless_input (hF : FoldOK σ X Types.guestC (Hooks.guestHooksR (σ := σ)))
    (htab : CTabSound σ X Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26)
    (hpay : SumSpecA σ X Types.guestC Hooks.guestHooksR (nm "decode_payload") dpSig DpPre
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)) :
    SumSpecA σ X Types.guestC Hooks.guestHooksR (nm "decode_stateless_input") dsSig DsPre
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have hfail : CSumm σ X Types.guestC Hooks.guestHooksR (nm "ssz_fail") sfSig [] :=
    ctab% htab
  have hchk : CSumm σ X Types.guestC Hooks.guestHooksR (nm "ssz_check_offsets") chkSig [] :=
    ctab% htab
  have hsfc : CSumm σ X Types.guestC Hooks.guestHooksR (nm "ssz_fixed_list_count") sfcSig [] :=
    ctab% htab
  have hreq : CSumm σ X Types.guestC Hooks.guestHooksR (nm "decode_requests") reqSig [] :=
    ctab% htab
  have hdbl : CSumm σ X Types.guestC Hooks.guestHooksR (nm "decode_bytes_list") dblSig [] :=
    ctab% (svFold_sound hF htab)
  have hfr := funRet_ssz_fail (σ := σ) hX
  have halloc : CSumm σ X Types.guestC Hooks.guestHooksR (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, Bv, rfl, hsA, hsB, hlA, hlB⟩ := lookupCode_two code_decode_stateless_input
    (by decide) hl
  obtain ⟨Pv, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Lv, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Pv', Lv', hvs, hP, hPL, hobj⟩ := hpre
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  set a := actOf Types.guestC Hooks.guestHooksR dsSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0
    with hadef
  have haC : a.C = Types.guestC := rfl
  have haCb : a.Cb = Types.guestC := rfl
  have haH : a.H = Hooks.guestHooksR := rfl
  have hgr : a.sg.grows = true := rfl
  have hret : a.sg.ret = [.fits (.ptr tSI)] := rfl
  refine hoareG_conseq (P := PreH a (LK [(nm "p", Pv), (nm "len", Lv)]))
    (Q := Node.NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨?_, Γ0, p0, ext_refl _, hh⟩
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl <;> rw [hloc] <;> assumption
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    exact ⟨Γ', p', he, hh', hv⟩
  exact ds_0 ha hX haC haCb haH hgr hret hpay hsfc hreq hfail hfr hchk hdbl hAS halloc ⟨hP, hPL⟩ hobj

/-- **`decode_stateless_input` at the challenge context and the record family `guestHooksR`.** -/
theorem sumSpecA_decode_stateless_input_guestR {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_stateless_input") dsSig
      DsPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpecA_decode_stateless_input foldOK_guestR tab26_guestR sumSpecA_decode_payload_guestR

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_stateless_input
#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_stateless_input_guestR
