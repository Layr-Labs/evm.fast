import InitECandidate.Solver.MemSafe.Rec.TxRec
import InitECandidate.Solver.MemSafe.Dn.Kit4
import InitECandidate.Solver.MemSafe.Dn.Resolve2

set_option autoImplicit false

/-!
# `decode_transaction`: the summary, with the envelope fact

```
fun 1 decode_transaction(1 p, 1 len) {
  var 1 tx = 0; var rc = 0;
  try tx = decode_transaction_rlp(p, len) catch RlpErr => rc { throw TxErr (100 + rc); }
  return tx;
}
```
`sumSpecA_decode_transaction`: `txSig`, `Pre = SlPre`, `PW = False`, and on a return `TxRxIn` (a `tTX` object at the
result, and `TO` / every `ACC_ADDR` located in the envelope `[p, p + len)`).
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH InitECandidate.Solver.MemSafe.Dn
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)

def txdTry : ProgHOL 64 :=
  .call (some (some (.local, nm "tx"), some (nm "RlpErr", nm "rc",
    .raise (nm "TxErr") (.op .add [cw 100, lv (nm "rc")]))))
    (nm "decode_transaction_rlp") [lv (nm "p"), lv (nm "len")]

def txdBody : ProgHOL 64 :=
  .dec (nm "tx") .one (cw 0) (.dec (nm "rc") .one (cw 0) (.seq txdTry (.return (lv (nm "tx")))))

theorem entry_decode_transaction : fnEntry Guest.Software.guestFn_decode_transaction =
    (nm "decode_transaction", [(nm "p", .one), (nm "len", .one)], txdBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_decode_transaction : guestCode (nm "decode_transaction") =
    some ([(nm "p", .one), (nm "len", .one)], txdBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 307) (by decide)) ⟨_, rfl⟩
    entry_decode_transaction

set_option maxHeartbeats 0 in
/-- **`decode_transaction`'s summary**, with the envelope fact. -/
theorem sumSpecA_decode_transaction {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_transaction") txSig
      (fun vs s _ => SlPre vs s) (fun _ _ _ _ => False)
      (fun vs _ _ r t Γ' => ∀ v, r = .returned v → TxRxIn vs Γ' t.memory v) := by
  have hF := foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hrlp := sumSpecA_decode_transaction_rlp_in_guestR (σ := σ)
  refine sumSpecA_of_heapQGm hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, Av, Bv, rfl, hsA, hsB, hlA, hlB⟩ := lookupCode_two code_decode_transaction (by decide) hl
  obtain ⟨Pv, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Lv, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Pv', Lv', hvs, hP, p, hp, hPL⟩ := hpre
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  rw [hh.2.1] at hp
  cases hp
  set a := actOf Types.guestC Hooks.guestHooksR txSig [] [.val (.word Pv), .val (.word Lv)] s0 Γ0 p0 with hadef
  have hRet : ∀ (Γ' : Gam) (p' : Ptrs) (v : ValueHOL 64), RetOK Γ' a.p0 p' a.vs a.sg.ret v :=
    fun Γ' p' v i r w hr _ => by simp [a, actOf, txSig] at hr
  let Rv0 : Gam → Ptrs → Mem → ValueHOL 64 → Prop := fun Γ' p' mem v =>
    RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ TxRxIn [Wd Pv, Wd Lv] Γ' mem v
  have hps : ∀ pt ∈ txSig.params, pt = .any := by simp [txSig]
  refine hoareG_conseq (P := DI a 0 0 (LV [(nm "p", Wd Pv), (nm "len", Wd Lv)]) (fun _ _ _ _ => True))
    (Q := NQM a Rv0) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨?_, Γ0, p0, ext_refl _, hh, blkF00, nob00, trivial⟩
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl <;> rw [hloc] <;> assumption
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    exact ⟨Γ', p', he, hh', fun v hv' => hv v hv'⟩
  unfold txdBody
  refine hoareG_decDIM ha.hH (L' := LV [(nm "tx", Wd (BitVec.ofNat 64 0)), (nm "p", Wd Pv), (nm "len", Wd Lv)]) ?_ ?_
  · intro s hs hL v hv
    rw [ev_cw] at hv
    cases hv
    exact lv_cons hL (by txrne) _
  refine hoareG_decDIM ha.hH (L' := LV [(nm "rc", Wd (BitVec.ofNat 64 0)), (nm "tx", Wd (BitVec.ofNat 64 0)),
    (nm "p", Wd Pv), (nm "len", Wd Lv)]) ?_ ?_
  · intro s hs hL v hv
    rw [ev_cw] at hv
    cases hv
    exact lv_cons hL (by txrne) _
  have hev : ∀ s : State σ, LV [(nm "rc", Wd (BitVec.ofNat 64 0)), (nm "tx", Wd (BitVec.ofNat 64 0)),
      (nm "p", Wd Pv), (nm "len", Wd Lv)] s.locals →
      evs s [lv (nm "p"), lv (nm "len")] = some [Wd Pv, Wd Lv] := fun s hL =>
    evs_cons (ev_lw (hL (nm "p", Wd Pv) (by simp))) (evs_cons (ev_lw (hL (nm "len", Wd Lv) (by simp))) evs_nil)
  have hpre' : ∀ (s : State σ) (Γ : Gam) (q : Ptrs) (callee : HolFiniteMapExact MlS (ValueHOL 64)),
      Heap a Γ q s → SlPre [Wd Pv, Wd Lv] (callEntryStateHOLFinite s callee) := fun s Γ q callee hh0 =>
    ⟨Pv, Lv, rfl, hP, q, hh0.2.1, by
      have h1 := hh0.2.2.1.1
      have e : a.p0.hp = p0.hp := rfl
      omega⟩
  refine hoareG_seq (R := fun r t => (r = none → ∃ V : ValueHOL 64, DI a 0 0 (fun m => m.lookup (nm "tx") = some V)
      (fun Γ q mem _ => TxRxIn [Wd Pv, Wd Lv] Γ mem V) t) ∧ (r ≠ none → NQM a Rv0 r t)) ?_
    (fun r t _ hr _ h => h.2 hr) ?_
  · unfold txdTry
    refine hoareG_callH hrlp ?_ ?_ ?_
    · intro s hs hD vs hvs callee v st hR hst
      obtain ⟨hL, Γ, q, he, hh0, -, -, -⟩ := hD
      rw [hev s hL] at hvs
      cases hvs
      obtain ⟨Γ', q', he', hh', -, -, -, -, -, hQ⟩ := heap_callMPQ (Pre := fun vs s _ => SlPre vs s)
        (Q := fun vs _ _ r t Γ' => ∀ v, r = .returned v → TxRxIn vs Γ' t.memory v) (r := .returned v) (st := st) ha hh0 hR
        (by simp [Good]) (by simp [Abortive]) (argsOK_any hps rfl) hps (hpre' s Γ q callee hh0)
        (by simp [txSig]) (fun _ => rfl)
      refine ⟨fun h => absurd h (by simp), fun k x hk hval => ?_⟩
      simp only [Option.some.injEq, Prod.mk.injEq] at hk
      obtain ⟨rfl, rfl⟩ := hk
      refine ⟨fun _ => ⟨v, lk_set_self _ _ _, Γ', q', ext_trans he he',
        heap_congr (s := st) ha.hH (t := setKvarHOLFinite .local (nm "tx") v { st with locals := s.locals })
          rfl rfl rfl rfl hh', blkF00, nob00, hQ v rfl⟩, fun h => absurd rfl h⟩
    · intro s hs hD vs hvs callee v st hR hst
      obtain ⟨hL, Γ, q, he, hh0, -, -, -⟩ := hD
      rw [hev s hL] at hvs
      cases hvs
      obtain ⟨Γ', q', he', hh', -⟩ := heap_callMPQ (Pre := fun vs s _ => SlPre vs s)
        (Q := fun vs _ _ r t Γ' => ∀ v, r = .returned v → TxRxIn vs Γ' t.memory v) (r := .exception (nm "RlpErr") v) (st := st) ha hh0 hR
        (by simp [Good]) (by simp [Abortive]; decide) (argsOK_any hps rfl) hps (hpre' s Γ q callee hh0)
        (by simp [txSig]) (fun _ => rfl)
      refine hoareG_raise fun t _ ht w _ => ?_
      subst ht
      refine ⟨fun h => absurd h (by simp), fun _ => ⟨by simp, fun r' hr' hna => ?_⟩⟩
      cases hr'
      exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
        fun v' hv' => by cases hv'⟩
    · intro s hs hD vs hvs callee r st hR hst habn hne
      obtain ⟨hL, Γ, q, he, hh0, -, -, -⟩ := hD
      rw [hev s hL] at hvs
      cases hvs
      refine ⟨fun h => absurd h (by simp), fun _ => ⟨by simp, fun r' hr' hna => ?_⟩⟩
      cases hr'
      obtain ⟨Γ', q', he', hh', -⟩ := heap_callMPQ (Pre := fun vs s _ => SlPre vs s)
        (Q := fun vs _ _ r t Γ' => ∀ v, r = .returned v → TxRxIn vs Γ' t.memory v) (r := r) (st := st) ha hh0 hR
        (abn_good' habn) hna (argsOK_any hps rfl) hps (hpre' s Γ q callee hh0) (by simp [txSig]) (fun _ => rfl)
      refine ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', fun v' hv' => ?_⟩
      subst hv'
      rcases habn with ⟨e, x, h⟩ | ⟨e, h⟩ <;> cases h
  · refine hoareG_pre (P := fun s => ∃ V : ValueHOL 64, DI a 0 0 (fun m => m.lookup (nm "tx") = some V)
      (fun Γ q mem _ => TxRxIn [Wd Pv, Wd Lv] Γ mem V) s) ?_ (fun s _ h => h.1 rfl)
    intro s hs ⟨V, hD⟩ hg
    refine hoareG_retDIM (Ar := 0) (n := 0) (L := fun m => m.lookup (nm "tx") = some V)
      (E := fun Γ q mem _ => TxRxIn [Wd Pv, Wd Lv] Γ mem V) ha.hH ?_ s hs hD hg
    intro s' _ hL Γ q _ _ _ _ hE v hv
    have e : ev s' (lv (nm "tx")) = some V := hL
    rw [e] at hv
    cases hv
    exact ⟨hRet Γ q _, hE⟩

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_decode_transaction
