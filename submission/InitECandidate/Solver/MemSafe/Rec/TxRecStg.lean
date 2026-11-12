import InitECandidate.Solver.MemSafe.Rec.TxRecInv

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: generic statement lemmas

`txr_st` (store into the tx block), `txr_kinc` (`k = k + c`), `txr_cw` (`w = f(...)`, any callee),
`txr_cv` (`v = tx_scalar_u256(...)`), `txr_vw` (`v = <w,0,0,0>`), and the condition evaluators.
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

variable {σ : Type} {X : Ctx 64}

theorem txr_st {a : Act σ} (ha : ActOK a X) {Ar A T NF K : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hS : StoreKeep Ar E) (off len : Nat) (hoff : off % 8 = 0) (hle : off + 8 * len ≤ 400)
    (hfn : ∀ f ∈ txFacts, f < off / 8 ∨ off / 8 + len ≤ f) {e : ExpHOL 64}
    (he : ∀ s : State σ, InCtx s X → txrBL Ar A T NF K s.locals → ∀ v, ev s e = some v →
      (flattenHOL v).length = len) :
    HoareG σ X (DI a Ar 400 (txrBL Ar A T NF K) E) (txrSt off e)
      (DQ a Ar 400 (txrBL Ar A T NF K) E) := by
  have hse := heapEnd_lt64
  unfold txrSt
  refine hoareG_stDINE ha (by omega) ?_ ?_
  · intro s hs hL w v hw hv
    rw [ev_add2 (ev_lw (bl_tx hL)) (ev_cw _ off)] at hw
    cases hw
    have hl := he s hs hL v hv
    refine ⟨off / 8, by omega, ?_⟩
    rw [show 8 * (off / 8) = off by omega]
  · intro s Γ q v j mem hs hL hv hj hw hmod hB hEs
    have hl := he s hs hL v hv
    rw [ev_add2 (ev_lw (bl_tx hL)) (ev_cw _ off)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hjj := ofN_inj Ar (a := off) (b := 8 * j) (by omega) (by omega) hw
    have hj8 : j = off / 8 := by omega
    rw [hl] at hmod
    exact hS hAr Γ q s.memory mem s.globals j len (by omega) (by rw [hj8]; exact hfn) hmod hB hEs

theorem txr_kinc {a : Act σ} (ha : ActOK a X) {Ar A T NF K : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (c : Nat) :
    HoareG σ X (DI a Ar 400 (txrBL Ar A T NF K) E) (txrK c)
      (DQ a Ar 400 (txrBL Ar A T NF (K + BitVec.ofNat 64 c)) E) := by
  unfold txrK
  refine hoareG_assignDI ha.hH ?_
  intro s hs hL v hv
  rw [ev_add2 (ev_lw (bl_k hL)) (ev_cw _ c)] at hv
  cases hv
  exact bl_setk _ hL

theorem txr_cw {a : Act σ} (ha : ActOK a X) {Ar A T NF K : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hC : CallKeep a Ar E) {f : String} {args : List (ExpHOL 64)} {sg' : Sig}
    (hf : CSumm σ X a.Cb a.H (nm f) sg' []) (hps : ∀ pt ∈ sg'.params, pt = .any)
    (hlen : sg'.params.length = args.length) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) :
    HoareG σ X (DI a Ar 400 (txrBL Ar A T NF K) E) (txrW f args)
      (DQ a Ar 400 (txrBL Ar A T NF K) E) := by
  unfold txrW
  refine hoareG_callAL ha hf (funSpec_true _) hps hlen hgw hgr ?_ ?_
  · intro s st vs callee v hL _ hval
    obtain ⟨W, hW⟩ := bl_w hL
    obtain ⟨w', rfl⟩ := valid_wordL hW hval
    exact bl_setw w' hL
  · intro s st vs callee v Γ Γ' q q' hs hL hvs _ he hh hB hn hEs co hval
    exact hC hAr sg' vs Γ Γ' q q' s st s.globals st.globals co (fun x hx => argCells_any hps hx) hB hEs

theorem txr_cv {a : Act σ} (ha : ActOK a X) {Ar A T NF K : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hC : CallKeep a Ar E) {args : List (ExpHOL 64)} {sg' : Sig}
    (hf : CSumm σ X a.Cb a.H (nm "tx_scalar_u256") sg' []) (hps : ∀ pt ∈ sg'.params, pt = .any)
    (hlen : sg'.params.length = args.length) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) :
    HoareG σ X (DI a Ar 400 (txrBL Ar A T NF K) E) (txrU args)
      (DQ a Ar 400 (txrBL Ar A T NF K) E) := by
  unfold txrU
  refine hoareG_callAL ha hf (funSpec_true _) hps hlen hgw hgr ?_ ?_
  · intro s st vs callee v hL _ hval
    obtain ⟨a0, b0, c0, d0, hV⟩ := bl_v hL
    obtain ⟨a', b', c', d', rfl⟩ := valid_v4 hV hval
    exact bl_setv a' b' c' d' hL
  · intro s st vs callee v Γ Γ' q q' hs hL hvs _ he hh hB hn hEs co hval
    exact hC hAr sg' vs Γ Γ' q q' s st s.globals st.globals co (fun x hx => argCells_any hps hx) hB hEs

theorem txr_vw {a : Act σ} (ha : ActOK a X) {Ar A T NF K : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} :
    HoareG σ X (DI a Ar 400 (txrBL Ar A T NF K) E)
      (.assign .local (nm "v") (.rstruct [lv (nm "w"), cw 0, cw 0, cw 0]))
      (DQ a Ar 400 (txrBL Ar A T NF K) E) := by
  refine hoareG_assignDI ha.hH ?_
  intro s hs hL v hv
  obtain ⟨W, hW⟩ := hL.2.1
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  rw [evs_cons (ev_lw hW) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil)))] at hvs
  cases hvs
  exact bl_setv W (BitVec.ofNat 64 0) (BitVec.ofNat 64 0) (BitVec.ofNat 64 0) hL

end InitECandidate.Solver.MemSafe.Rec
