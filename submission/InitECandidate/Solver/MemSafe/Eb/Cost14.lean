import InitECandidate.Solver.MemSafe.Eb.Cost13
import InitECandidate.Solver.MemSafe.Eb.Loop14

/-!
# `execute_block`: the cost walk, part 14 (the loop body)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

section cw14
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_decDecode {Bk : Nat} (hQ : ResIns (nm "tx") QT) (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    {pl0 ptxs0 ntx0 iv : BitVec 64} (hptxs : En (nm "ptxs") = some (.val (.word ptxs0)))
    (hi : En (nm "i") = some (.val (.word iv))) (hlt : iv.toNat < ntx0.toNat) (hbd : ntx0.toNat < 2 ^ 50)
    (hpl : S (Fct.obj pl0 tPL 136)) (h32 : S (Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0))
    (h40 : S (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0)) {k : ProgHOL 64}
    (hk : ∀ T : BitVec 64, CW (PAX E (En.set (nm "tx") (.val (.word T)))
      (fun f => S f ∨ f = Fct.obj T tTX 0) (fun Γ p u => CPre Γ ∧ Rec.TxBuf Γ (Exb.gp0 p) u.memory T 152)) k Bk QT) :
    CW (PA E En S) (.decCall (nm "tx") .one (nm "decode_transaction") [txArg1, txArg2] k) (1 + cDecTx + Bk) QT := by
  refine cw_decCallK (PreC := fun _ _ => True) hQ (FunSpec.and cr_decode (gwk_tab (σ := σ) (by decide)))
    (Inv.calleeCostP_of_calleeCost cc_cDecTx) (fun _ _ _ _ _ _ => trivial) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨Γ, p, hr, hL⟩, hlk⟩
  have hbd' : iv.toNat < 2 ^ 50 := by omega
  obtain ⟨hv1, hv2⟩ := txArg_vals hpa hptxs hi hbd'
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  have e1 := hv1 _ h1
  have e2 := hv2 _ h2
  subst e1; subst e2
  obtain ⟨hsin, hsobj⟩ := slice_facts (ebRun_G hr) (by
    obtain ⟨o, ho, hob, hot, -⟩ := hL _ hpl; exact ⟨o, ho, hob, hot⟩) (rd_of_pcv hpa h32) (rd_of_pcv hpa h40) hlt
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := ebRun_G hr
  obtain rfl : p = q0 := (Option.some.inj (hq0.symm.trans (ebRun_ptrs hr))).symm
  obtain ⟨x, hx, htx, hxlo, hxhi⟩ := hsobj
  have hlive := (hL0.1 x hx).2.2.2.2
  have hreg : (guestC.ty x.ty).region = .heap := by rw [htx]; decide
  rw [hreg] at hlive
  have hpre : ArgsOK guestC Γ p Rec.txSig.params [.val (.word (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * iv.toNat)))),
      .val (.word (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * iv.toNat + 8))))] ∧
      Spec.Mpt.Dec.SlPre [.val (.word (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * iv.toNat)))),
      .val (.word (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * iv.toNat + 8))))] (callEntryStateHOLFinite s callee) :=
    ⟨argsOK_any (by simp [Rec.txSig]) (by simp [Rec.txSig]), _, _, rfl, hsin.2.1,
      p, (ptrsOf_congr rfl).trans (ebRun_ptrs hr), by unfold Region.Live at hlive; unfold Obj.hi at hxhi; unfold Obj.lo at hlive; omega⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step (E := E) (W := fun g => tabW.contains g = true)
    (Pre := fun vs s Γ p => ArgsOK guestC Γ p Rec.txSig.params vs ∧ Spec.Mpt.Dec.SlPre vs s)
    (D := fun _ _ _ _ => False)
    (Q := fun vs s Γ p v t Γ' p' => RetOK Γ' p p' vs Rec.txSig.ret v ∧ (Rec.txSig.grows = false → NewFresh Γ Γ' p p) ∧
      Rec.TxRxIn vs Γ' t.memory v) hR
    (fun g hg => hgl v rfl g hg) hr hL hpre (by intro f hf a ha h; exact h) (tidy_gmiss hT hz).1 (tidy_gmiss hT hz).2
  obtain ⟨-, -, htxrx⟩ := hq
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one' hsh
  obtain ⟨oT, hoT, hobT, hotT⟩ := htxrx.1 T rfl
  have hTxIn := htxrx.2 _ _ T rfl rfl
  obtain ⟨hr2, hC⟩ := ebRun_keepG hK hE0 hrun
  obtain ⟨x', hx', hbx, htx', hsx⟩ := hstp.1.ext x hx
  have hL1 : Layout guestC p' Γ' := by
    obtain ⟨q1, hq1, -, hL1, -⟩ := hstp.1.hG'
    obtain rfl : q1 = p' := Option.some.inj (hq1.symm.trans hstp.1.hp')
    exact hL1
  have hord1 := ebRun_ord (ebRun_stp (ebRun_loc hr callee (s.clock - 1)) hstp)
  have hxlo' : x'.lo ≤ (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * iv.toNat))).toNat := by
    unfold Obj.lo; rw [hbx]; exact hxlo
  have hxhi' : (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * iv.toNat))).toNat +
      (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * iv.toNat + 8))).toNat ≤ x'.hi := by
    unfold Obj.hi; unfold Obj.hi at hxhi; rw [hbx]; omega
  have hx'k : x' ∈ keepG Γ' := mem_keepG.mpr ⟨hx', htx' ▸ htx ▸ (keepTy_block _ (by simp))⟩
  have hLk : Layout guestC p' (keepG Γ') :=
    layout_shrink hL1 (fun o ho => (mem_keepG.mp ho).1) (((layout_nodup hL1).filter _).filter _)
  have hbuf := Rec.txBuf_of_txIn (Exb.gp0_ord hord1) (layout_gp0 (fun o ho => (mem_keepG.mp ho).2.1) hLk) hx'k
    (htx' ▸ htx) hxlo' hxhi' hTxIn
  refine cw_pre (hk T) ?_
  intro t _ ht
  subst ht
  have hH : HoldsAll E.p0 (keepG Γ') p' { st with locals := s.locals } (fun f => S f ∨ f = Fct.obj T tTX 0) := by
    intro f hf
    rcases hf with hf | rfl
    · exact holds_keepG (hS f hf) (hL' f hf)
    · exact ⟨oT, mem_keepG.mpr ⟨hoT, hotT ▸ keepTy_block _ (by simp [PlTys])⟩, hobT, hotT, Nat.zero_le _⟩
  refine ⟨⟨keepG Γ', p', ebRun_set hr2 _ _, ?_, hC, hbuf⟩, lke_set (lke_restore hlk) _ _⟩
  intro f hf
  have := (holdsAll_loc hH s.locals st.clock) f hf
  cases f <;> first | exact this | simpa [Fct.holds, gword, rd] using this


end cw14

end InitECandidate.Solver.MemSafe.Eb
