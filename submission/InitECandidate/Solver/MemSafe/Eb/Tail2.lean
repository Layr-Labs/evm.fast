import InitECandidate.Solver.MemSafe.Eb.Adapt
import InitECandidate.Solver.MemSafe.BalEnc.Bbl10

/-!
# `execute_block`: `build_block_access_list_rlp` as `CallR`
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

theorem lst_notBP : ∀ t, (t ∈ Hooks.lstTys ∨ Hooks.IsLstA t) → t ∉ blockTys ++ PlTys := by
  intro t ht
  rcases ht with h | h
  · simp only [Hooks.lstTys, List.mem_cons, List.not_mem_nil, or_false] at h
    rcases h with rfl | rfl | rfl | rfl | rfl <;> decide
  · rcases h with rfl | rfl <;> decide

theorem laPW_notBP {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {a : BitVec 64}
    (h : Inc.LaPW Γ a) : ¬ BCell guestC Γ a ∧ ¬ PlCell Γ a := by
  have key : ∀ (L : Obj), L ∈ Γ → L.ty ∉ blockTys ++ PlTys → ∀ k, L.HasSlot k → a = L.cell k →
      ¬ BCell guestC Γ a ∧ ¬ PlCell Γ a := by
    intro L hLm hne k hk he
    refine ⟨?_, ?_⟩
    · rintro ⟨o, ho, hty', k', hk', -, he'⟩
      obtain ⟨rfl, -⟩ := cell_inj hord hL hLm ho hk hk' (he.symm.trans he')
      exact hne (List.mem_append.mpr (Or.inl hty'))
    · rintro ⟨o, ho, hty', k', hk', -, he'⟩
      obtain ⟨rfl, -⟩ := cell_inj hord hL hLm ho hk hk' (he.symm.trans he')
      exact hne (List.mem_append.mpr (Or.inr hty'))
  rcases h with ⟨L, hLm, hty, hc⟩ | ⟨y, hy, hty, k, hk, he⟩
  · have hmin := (hL.1 L hLm).2.2.2.1
    have h3 : 24 ≤ (guestC.ty L.ty).minSz := by
      simp only [Hooks.lstTys, List.mem_cons, List.not_mem_nil, or_false] at hty
      rcases hty with h | h | h | h | h <;> rw [h] <;> decide
    rcases hc with rfl | rfl | rfl
    · exact key L hLm (lst_notBP _ (Or.inl hty)) 0 (by unfold Obj.HasSlot; omega) rfl
    · exact key L hLm (lst_notBP _ (Or.inl hty)) 1 (by unfold Obj.HasSlot; omega) rfl
    · exact key L hLm (lst_notBP _ (Or.inl hty)) 2 (by unfold Obj.HasSlot; omega) rfl
  · exact key y hy (lst_notBP _ (Or.inr hty)) k hk he

theorem prot_lt_hp {Γ : Gam} {p : Ptrs} (hC : CPre Γ) (hord : p.Ordered) (hL : Layout guestC p Γ)
    {a : BitVec 64} (h : ProtCell guestC Γ a) : a.toNat < p.hp := by
  obtain ⟨o, ho, k, hk, -, rfl⟩ := h
  obtain ⟨o', ho', hlo, hhi⟩ := cell_in hord hL ho hk
  have := (live_of hL ho').1 (hC.1 o' ho')
  omega

theorem prot_notW {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {a : BitVec 64}
    (h : ProtCell guestC Γ a) : ¬ WCell guestC Γ a := by
  obtain ⟨o, ho, k, hk, hpk, rfl⟩ := h
  rintro ⟨o', ho', k', hk', hne, he⟩
  obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
  exact hne hpk

theorem csok_bal : CsOK Bal.balCaps := by
  refine ⟨?_, ?_, ?_⟩ <;> decide

theorem cr_bbl (hK : HypKeepG σ) : CallR (σ := σ) (nm "build_block_access_list_rlp")
    (fun vs s Γ _ => vs = [] ∧ CPre Γ ∧ BalEnc.BblPre s Γ) (fun _ _ _ _ => False)
    (fun _ _ _ p v _ _ _ => ∃ S L : BitVec 64, v = .rStruct [.val (.word S), .val (.word L)] ∧
      p.hp ≤ S.toNat ∧ S.toNat + L.toNat ≤ Aw.B0 ∧ 1 ≤ L.toNat) := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE ⟨hvs, hC, hpre⟩
  have hpost := BalEnc.funSpec_build_block_access_list_rlp vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hvs hpre
  obtain ⟨Γ', p', h1, hG', hp', hk, hm, a1, a2, a3, hmod, hb, hpg, S, L, hv', hS, hSL, hL1⟩ := hpost v (by rw [hv])
  have hord := ordered_of_G hG hp
  obtain ⟨q, hq, -, hL, -⟩ := id hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  have hE' : EvCc (evaluateHOLFiniteState s body).2 := by
    have hF := Hooks.frameCfg_guestHooksR (σ := σ)
    obtain ⟨⟨e, he, hs1⟩, ⟨c, hc', hs2⟩⟩ := hE
    refine ⟨⟨e, ?_, hs1⟩, ⟨c, ?_, hs2⟩⟩
    · unfold gword; rw [hpg _ hF.pgEv]; exact he
    · unfold gword; rw [hpg _ hF.pgCC]; exact hc'
  have hJ' : JrNZ (evaluateHOLFiniteState s body).2 :=
    jrNZ_of_lookup (fun g hg => hpg g (by rcases jrGs_cases hg with rfl | rfl <;> decide)) hJ
  obtain ⟨hstep, -⟩ := stepD_of_keepH hK hC hG hp hG' hp' hk (mono_g_of_mono hord (ordered_of_G hG' hp') hm) hE'
  have hfr : ∀ a, (BCell guestC Γ a ∨ PlCell Γ a) →
      rd (evaluateHOLFiniteState s body).2.memory a = rd s.memory a := by
    intro a hx
    have ha : ProtCell guestC Γ a := hx.elim bCell_prot plCell_prot
    have hlt := prot_lt_hp hC hord hL ha
    have := hmod a (by
      rintro (h | h | h | h)
      · omega
      · rcases h with h | h
        · have := capPW_notBP csok_bal hord hL h
          exact hx.elim this.1 this.2
        · have := laPW_notBP hord hL h
          exact hx.elim this.1 this.2
      · exact prot_notW hord hL ha h
      · exact h (prot_alloc hord hL ha))
    unfold rd; rw [this]
  refine ⟨keepG Γ', p', ⟨hstep, hJ', hE', fun a ha _ => hfr a (Or.inl ha),
    plKeep_iff.mpr fun a ha => hfr a (Or.inr ha)⟩, S, L, hv', ?_, hSL, hL1⟩
  have := hS
  omega

end InitECandidate.Solver.MemSafe.Eb
