import InitECandidate.Solver.MemSafe.Rec.TxEncR

/-!
# `encode_transaction`: the result lies in the block it allocated

`funSpec_encode_transaction_out` is the fact package F3d takes as `Ptx.HypEncTx`: from `G` and a `tTX` object, a return ends with `G` at `Γ'`, the usual frame, and a slice `<rp, rl>`
inside a fresh aligned block `[buf, buf + n)` above the entry heap pointer and outside `Γ'`. It comes from `te_hoare`'s post (`EncV`, `BlkH`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

/-- The post of an encoder with a fresh result (`Ptx.EncOut`). -/
def EncOutT (Γ : Gam) (p : Ptrs) (s t : State σ) (v : ValueHOL 64) : Prop :=
  ∃ (Γ' : Gam) (p' : Ptrs) (rp rl : BitVec 64), G guestC (guestHooksR (σ := σ)) Γ' t ∧ ptrsOf t = some p' ∧ Ext Γ Γ' ∧
    NewFresh Γ Γ' p p' ∧ p.Mono p' ∧ (∀ g ∈ guestC.PG, t.globals.lookup g = s.globals.lookup g) ∧
    flattenHOL v = [.word rp, .word rl] ∧ 1 ≤ rl.toNat ∧
    ∃ buf n : Nat, buf % 8 = 0 ∧ n % 8 = 0 ∧ p.hp ≤ buf ∧ buf ≤ rp.toNat ∧ rp.toNat + rl.toNat ≤ buf + n ∧
      buf + n ≤ p'.hp ∧ (∀ a : Nat, buf ≤ a → a < buf + n → ¬ InObj Γ' a) ∧
      ModifiesOnly (fun x => WCell guestC Γ x ∨ (buf ≤ x.toNat ∧ x.toNat < buf + n) ∨ ¬ p.Allocated x.toNat)
        s.memory t.memory

theorem inObj_cellR {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {x : Nat} (h : InObj Γ x) : InObj Γ (x / 8 * 8) := by
  obtain ⟨o, ho, h1, h2⟩ := h
  obtain ⟨a1, a2, -⟩ := hL.1 o ho
  refine ⟨o, ho, ?_, ?_⟩ <;> unfold Obj.lo Obj.hi at * <;> omega

/-- **`tx_encode_generic`'s result.** -/
theorem funSpec_te_out : FunSpec σ guestCtx (nm "tx_encode_generic") (fun vs s r t => ∀ v, r = .returned v →
    ∀ (Γ : Gam) (p : Ptrs) (TX M CI : BitVec 64), G guestC (guestHooksR (σ := σ)) Γ s → ptrsOf s = some p →
      vs = [.val (.word TX), .val (.word M), .val (.word CI)] → (∃ o ∈ Γ, o.base = TX ∧ o.ty = tTX) → EncOutT Γ p s t v) := by
  have hF := foldOK_guestR (σ := σ)
  intro vs body callee rs hl s hs hloc r hr v hv Γ p TX M CI hG hp hvs ⟨o, ho, hob, hot⟩
  subst hv
  subst hvs
  have hargs : ArgsOK guestC Γ p teSig.params [.val (.word TX), .val (.word M), .val (.word CI)] := by
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | _ | i <;> simp [teSig] at hpt hv
    · subst hpt; subst hv; exact ⟨TX, rfl, o, ho, hob, hot⟩
    · subst hpt; trivial
    · subst hpt; trivial
  obtain ⟨ha, hh⟩ := act_entry hF.hH hF.hC hF.hal hF.hAC hF.hNS (capsOK_nil guestC teSig) hG hp hargs (fun c hc => by cases hc)
  have H := te_hoare hF encHyps_guestR hl hloc ha hh s hs rfl (by rw [hr]; simp [Good])
  rw [hr] at H
  obtain ⟨Bf, Bn, b1, b2, b3, ⟨rp, rl, rfl, c1, c2, c3⟩, Γ', q', he, hh', hblk⟩ := H.2 _ rfl
  have hord' := heap_ord hh'
  have hLy : Layout guestC q' Γ' := by
    obtain ⟨p1, hp1, -, hL, -⟩ := hh'.1
    have e : q' = p1 := Option.some.inj (hh'.2.1.symm.trans hp1)
    subst e
    exact hL
  have he63 : heapEnd < 2 ^ 63 := by decide
  have hn0 : 0 < Bn := by omega
  have hcellN : ∀ c : Nat, c < 2 ^ 64 → (BitVec.ofNat 64 c).toNat = c := fun c hc => by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hc]
  have hovl : ∀ c : Nat, c % 8 = 0 → Bf.toNat < c + 8 → c < Bf.toNat + Bn → Overlap Bf.toNat Bn (BitVec.ofNat 64 c) := by
    intro c h8 h1 h2
    have e := hcellN c (by omega)
    exact ⟨by rw [e]; exact h8, by rw [e]; exact h1, by rw [e]; exact h2⟩
  have hlast : Bf.toNat + ((Bn + 7) / 8 * 8) ≤ q'.hp := by
    have hc := hovl ((Bf.toNat + Bn - 1) / 8 * 8) (by omega) (by omega) (by omega)
    obtain ⟨-, hal, -⟩ := hblk _ hc
    rw [hcellN _ (by omega)] at hal
    obtain ⟨-, o2, o3, o4, -, o6, -⟩ := hord'
    unfold Ptrs.Allocated at hal
    omega
  refine ⟨Γ', q', rp, rl, hh'.1, hh'.2.1, he, hh'.2.2.2.2.1, hh'.2.2.1, fun g hg => hh'.2.2.2.2.2.2.1 g hg (by simp [actOf, teSig]),
    by simp [flattenHOL], c3, Bf.toNat, (Bn + 7) / 8 * 8, b1, by omega, b2, c1, by omega, hlast, fun x x1 x2 hin => ?_, fun x hx => ?_⟩
  · have hc := hovl (x / 8 * 8) (by omega) (by omega) (by omega)
    obtain ⟨hni, -⟩ := hblk _ hc
    rw [hcellN _ (by have := hord'.2.1; omega)] at hni
    exact hni (inObj_cellR hLy hin)
  · refine hh'.2.2.2.2.2.1 x fun hf => hx ?_
    rcases hf with h | h | h | ⟨-, c, hc, -⟩
    · exact Or.inl h
    · obtain ⟨i, w, -, h⟩ := h
      rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, y, hj, -⟩
      · rcases i with _ | _ | _ | i <;> simp [actOf, teSig] at hn
      · rcases i with _ | _ | _ | i <;> simp [actOf, teSig] at hj
    · exact Or.inr (Or.inr h)
    · cases hc

theorem entry_encode_transaction : fnEntry Guest.Software.guestFn_encode_transaction =
    (nm "encode_transaction", [(nm "tx", .one)],
      .call none (nm "tx_encode_generic") [lv (nm "tx"), cw 0, cw 0], .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_encode_transaction : guestCode (nm "encode_transaction") = some ([(nm "tx", .one)],
    .call none (nm "tx_encode_generic") [lv (nm "tx"), cw 0, cw 0], .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 329) (by decide)) ⟨_, rfl⟩ entry_encode_transaction

/-- **`encode_transaction`'s result** (`Ptx.HypEncTx`). -/
theorem funSpec_encode_transaction_out : FunSpec σ guestCtx (nm "encode_transaction") (fun vs s r t => ∀ v, r = .returned v →
    ∀ (Γ : Gam) (p : Ptrs) (tx : BitVec 64), G guestC (guestHooksR (σ := σ)) Γ s → ptrsOf s = some p →
      vs = [.val (.word tx)] → (∃ o ∈ Γ, o.base = tx ∧ o.ty = tTX) → EncOutT Γ p s t v) := by
  have hF := foldOK_guestR (σ := σ)
  have hX := hF.hX
  intro vs body callee rs hl s hs hloc r hr v hv Γ p tx hG hp hvs hobj
  subst hv
  subst hvs
  have hl' := hl
  rw [hX] at hl'
  obtain ⟨rfl, -, A, hA1, -, hla⟩ := lookupCode_one code_encode_transaction hl'
  have hA2 : A = .val (.word tx) := by
    simp only [List.cons.injEq, and_true] at hA1
    exact hA1.symm
  subst hA2
  have hlt : s.locals.lookup (nm "tx") = some (.val (.word tx)) := by rw [hloc]; exact hla
  have H : HoareG σ guestCtx (fun t => t = s) (.call none (nm "tx_encode_generic") [lv (nm "tx"), cw 0, cw 0])
      (fun r t => ∀ v, r = some (.returned v) → EncOutT Γ p s t v) := by
    refine hoareG_tailCall funSpec_te_out ?_ ?_
    · rintro s0 _ rfl vs hvs callee0 v0 st hR _ v' hv'
      cases hv'
      rw [evs_cons (ev_lw hlt) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil))] at hvs
      cases hvs
      have hH := guestHooksR_lawful (σ := σ)
      obtain ⟨Γ', p', rp, rl, e1, e2, e3, e4, e5, e6, e7, e8, buf, n, f1, f2, f3, f4, f5, f6, f7, f8⟩ :=
        hR v0 rfl Γ p tx _ _ (G_congr (s := s0) hH rfl rfl rfl rfl hG) hp rfl hobj
      exact ⟨Γ', p', rp, rl, G_congr (s := st) hH rfl rfl rfl rfl e1, e2, e3, e4, e5, e6, e7, e8, buf, n, f1, f2, f3, f4, f5, f6, f7, f8⟩
    · intro s0 _ _ vs _ callee0 r0 st _ _ habn v' hv'
      exact absurd (Option.some.inj hv') (abn_ne_retV habn v')
  have H1 := H s hs rfl (by rw [hr]; simp [Good])
  rw [hr] at H1
  exact H1 _ rfl

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_te_out
#print axioms InitECandidate.Solver.MemSafe.Rec.funSpec_encode_transaction_out
