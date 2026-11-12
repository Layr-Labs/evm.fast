import InitECandidate.Solver.MemSafe.Rec.TxRecFirst
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the summary

```
fun 1 decode_transaction_rlp(1 p, 1 len)
```
`sumSpecA_decode_transaction_rlp`: `txSig = <[any, any], [], [], true>`, precondition `SlPre` (the envelope
`[p, p + len)` lies in allocated heap), and for a returned `tx` the typing `Γ'` has a `tTX` object based at `tx`
(its hook, hence `TxW`, is part of `G Γ'`).
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
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)

def txSig : Sig := ⟨[.any, .any], [], [], true⟩

/-- the value fact exported by the summary: the returned word is the base of a `tTX` object of `Γ'` -/
def TxRx (Γ' : Gam) (v : ValueHOL 64) : Prop :=
  ∀ tx : BitVec 64, v = Wd tx → ∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX

/-- **The address pointers lie in the envelope** `[P, P + N)`: `TO` (`tx + 152`) is 0 or 20 bytes inside it, and so is
every access record's `ACC_ADDR` (`rd (tx + 208) + 24 i`, `i < rd (tx + 216)`). -/
def TxIn (P N : BitVec 64) (m : Mem) (tx : BitVec 64) : Prop := TxK tx P N m

/-- `TxRx` and, for the envelope `vs = [P, N]`, `TxIn`. -/
def TxRxIn (vs : List (ValueHOL 64)) (Γ' : Gam) (mem : Mem) (v : ValueHOL 64) : Prop :=
  TxRx Γ' v ∧ ∀ P N tx : BitVec 64, vs = [Wd P, Wd N] → v = Wd tx → TxIn P N mem tx

/-- `sumSpecA_of_heapQG` with a value fact that sees the exit memory. -/
theorem sumSpecA_of_heapQGm {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Rx : List (ValueHOL 64) → Gam → Mem → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        Pre vs s0 Γ0 →
        ActOK (actOf C H sg [] vs s0 Γ0 p0) X → Heap (actOf C H sg [] vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg [] vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v ∧ Rx vs Γ' t.memory v)) :
    SumSpecA σ X C H f sg Pre (fun _ _ _ _ => False)
      (fun vs _ _ r t Γ' => ∀ v, r = .returned v → Rx vs Γ' t.memory v) := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hpre
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS (WaveHelpers.capsOK_nil C sg) hG hps hargs
    (fun c hc => by cases hc)
  have HH := h vs body callee rs hl s hs hloc Γ p1 hpre ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hret⟩ := HH r rfl hna
  refine ⟨Γ', p1, p', sumCore_pw_mono2 (act_exit (WaveHelpers.capsOK_nil C sg) hps hext hh'
    (fun v hv => (hret v hv).1)) ?_, fun v hv => (hret v hv).2⟩
  rintro x ⟨hx, c, hc, -⟩
  cases hc

set_option maxHeartbeats 0 in
theorem sumSpecA_decode_transaction_rlp_in {σ : Type} {X : Ctx 64}
    (hF : FoldOK σ X Types.guestC (Hooks.guestHooksR (σ := σ)))
    (htab : CTabSound σ X Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26) :
    SumSpecA σ X Types.guestC Hooks.guestHooksR (nm "decode_transaction_rlp") txSig
      (fun vs s _ => SlPre vs s) (fun _ _ _ _ => False)
      (fun vs _ _ r t Γ' => ∀ v, r = .returned v → TxRxIn vs Γ' t.memory v) := by
  have hX := hF.hX
  have hword : CSumm σ X Types.guestC Hooks.guestHooksR (nm "tx_scalar_word") txwSig [] :=
    ctab% htab
  have hu256 : CSumm σ X Types.guestC Hooks.guestHooksR (nm "tx_scalar_u256") txfSig [] :=
    ctab% htab
  have hfixed : CSumm σ X Types.guestC Hooks.guestHooksR (nm "tx_fixed_bytes") txfSig [] :=
    ctab% htab
  have htoit : CSumm σ X Types.guestC Hooks.guestHooksR (nm "tx_to_item") rlsSig [] :=
    ctab% htab
  have hbitem : CSumm σ X Types.guestC Hooks.guestHooksR (nm "tx_bytes_item") rlsSig [] :=
    ctab% htab
  have hlitem : CSumm σ X Types.guestC Hooks.guestHooksR (nm "tx_list_item") rlsSig [] :=
    ctab% htab
  have hrdf : CSumm σ X Types.guestC Hooks.guestHooksR (nm "rlp_decode_fully") rlsSig [] :=
    ctab% htab
  have hrls : CSumm σ X Types.guestC Hooks.guestHooksR (nm "rlp_list_to_slices") rlsSig [] :=
    ctab% htab
  have hmz : CSumm σ X Types.guestC Hooks.guestHooksR (nm "memzero") Helpers.sigMemzero [] :=
    ctab% htab
  have halloc : CSumm σ X Types.guestC Hooks.guestHooksR (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hF.hH hF.hAC _ _ (by simp [builtinTab]))
  have hAS : AllocSpec σ X (nm "alloc") .heap := allocSpec_alloc hX
  have hacc := sumSpecA_decode_access_list hF htab
  have hbh := sumSpecA_decode_blob_hashes hF htab
  have hau := sumSpecA_decode_authorizations hF htab
  refine sumSpecA_of_heapQGm hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, Bv, rfl, hsA, hsB, hlA, hlB⟩ := lookupCode_two code_decode_transaction_rlp
    (by decide) hl
  obtain ⟨Pv, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Lv, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Pv', Lv', hvs, hP, p, hp, hPL⟩ := hpre
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  rw [hh.2.1] at hp
  cases hp
  have hret : (actOf Types.guestC Hooks.guestHooksR txSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0).sg.ret = [] := rfl
  have hRet : ∀ Γ' p' (v : ValueHOL 64), RetOK Γ' (actOf Types.guestC Hooks.guestHooksR txSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0).p0 p'
      (actOf Types.guestC Hooks.guestHooksR txSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0).vs
      (actOf Types.guestC Hooks.guestHooksR txSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0).sg.ret v := by
    intro Γ' p' v i r w hr _
    rw [hret] at hr
    simp at hr
  refine hoareG_conseq (P := DI (actOf Types.guestC Hooks.guestHooksR txSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0) 0 0
    (LV [(nm "p", Wd Pv), (nm "len", Wd Lv)]) (fun _ _ _ _ => True))
    (Q := NQM (actOf Types.guestC Hooks.guestHooksR txSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0)
      (fun Γ' p' mem v => RetOK Γ' (actOf Types.guestC Hooks.guestHooksR txSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0).p0 p'
        (actOf Types.guestC Hooks.guestHooksR txSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0).vs
        (actOf Types.guestC Hooks.guestHooksR txSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0).sg.ret v ∧ TxRx Γ' v ∧
          ∀ tx : BitVec 64, v = Wd tx → TxIn Pv Lv mem tx)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨?_, Γ0, p0, ext_refl _, hh, blkF_zero Γ0 p0, fun x hx => ?_, trivial⟩
    · intro q hq
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
      rcases hq with rfl | rfl <;> rw [hloc] <;> assumption
    · obtain ⟨-, h1, h2⟩ := hx
      simp at h2
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    refine ⟨Γ', p', he, hh', fun v hv' => ⟨(hv v hv').1, (hv v hv').2.1, fun P N tx hvs hvt => ?_⟩⟩
    simp only [Wd, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl⟩ := hvs
    exact (hv v hv').2.2 tx hvt
  · have hcs : TxCS X (actOf Types.guestC Hooks.guestHooksR txSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0) :=
      ⟨hX, rfl, rfl, rfl, hword, hu256, hfixed, htoit, hbitem, hlitem, hrdf, hrls, hmz, halloc, hAS, hacc, hbh, hau⟩
    refine txr_entry ha hcs ⟨hP, hPL⟩ (fun Ar B0 h1 h2 h3 hn0 => ?_)
    refine txr_FB ha hcs rfl ⟨h1, h3⟩ h2 ⟨hP, hPL⟩ hn0 ?_
    intro Γ' p' mem tx hx hK
    refine ⟨hRet Γ' p' _, fun tx' hv => ?_, fun tx' hv => ?_⟩
    · simp only [Wd, ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
      subst hv
      exact hx
    · simp only [Wd, ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
      subst hv
      exact hK

theorem sumSpecA_decode_transaction_rlp {σ : Type} {X : Ctx 64}
    (hF : FoldOK σ X Types.guestC (Hooks.guestHooksR (σ := σ)))
    (htab : CTabSound σ X Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26) :
    SumSpecA σ X Types.guestC Hooks.guestHooksR (nm "decode_transaction_rlp") txSig
      (fun vs s _ => SlPre vs s) (fun _ _ _ _ => False)
      (fun vs _ _ r _ Γ' => ∀ v, r = .returned v → TxRx Γ' v) :=
  sumSpecA_mono (sumSpecA_decode_transaction_rlp_in hF htab) (fun _ _ _ h => h) (fun _ _ _ _ h => h)
    (fun _ _ _ _ _ _ h v hv => (h v hv).1)

/-- **`decode_transaction_rlp` at the challenge context**, with the envelope fact. -/
theorem sumSpecA_decode_transaction_rlp_in_guestR {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_transaction_rlp") txSig
      (fun vs s _ => SlPre vs s) (fun _ _ _ _ => False)
      (fun vs _ _ r t Γ' => ∀ v, r = .returned v → TxRxIn vs Γ' t.memory v) :=
  sumSpecA_decode_transaction_rlp_in foldOK_guestR tab26_guestR

/-- **`decode_transaction_rlp` at the challenge context and `guestHooksR`.** -/
theorem sumSpecA_decode_transaction_rlp_guestR {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_transaction_rlp") txSig
      (fun vs s _ => SlPre vs s) (fun _ _ _ _ => False)
      (fun vs _ _ r _ Γ' => ∀ v, r = .returned v → TxRx Γ' v) :=
  sumSpecA_decode_transaction_rlp foldOK_guestR tab26_guestR

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_transaction_rlp
#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_transaction_rlp_guestR
#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_transaction_rlp_in_guestR
