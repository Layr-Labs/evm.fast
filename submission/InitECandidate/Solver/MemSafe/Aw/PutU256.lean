import InitECandidate.Solver.MemSafe.Aw.Wd

set_option autoImplicit false

/-!
# `rlp_put_u256` as an above-writer (target D)

`mark = heap_mark(); tmp = alloc(32); n = u256_to_be_min(v, tmp); w = rlp_encode_bytes(dst, tmp, n);
heap_release(mark); return w`. The table entry `u256_to_be_min` is a hypothesis.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}


def put256Body : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall tmpN .one (nm "alloc") [cw 32]
      (.decCall nN .one (nm "u256_to_be_min") [lv vN, lv tmpN]
        (.decCall wN .one (nm "rlp_encode_bytes") [lv dN, lv tmpN, lv nN]
          (.seq (callD (nm "heap_release") [lv markN]) (.return (lv wN))))))

theorem code_rlp_put_u256 : guestCode (nm "rlp_put_u256") =
    some ([(dN, .one), (vN, .comb [.one, .one, .one, .one])], put256Body, .one) := by
  have h : fnEntry Guest.Software.guestFn_rlp_put_u256 =
      (nm "rlp_put_u256", [(dN, .one), (vN, .comb [.one, .one, .one, .one])], put256Body, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 228) (by decide)) ⟨_, rfl⟩ h

def PreWh (h0 : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs 0 = some D ∧ h0 ≤ D.toNat ∧ D.toNat ≤ 2 ^ 60

/-- The locals of `rlp_put_u256` after the mark, the allocation and the conversion. -/
def Pu1 (D0 : BitVec 64) (p0hp : Nat) (m : Locals) : Prop :=
  m.lookup dN = some (.val (.word D0)) ∧ MkB p0hp markN m

def Pu2 (D0 : BitVec 64) (p0hp h0 : Nat) (m : Locals) : Prop :=
  Pu1 D0 p0hp m ∧ Bd m tmpN h0 heapEnd

def Pu3 (D0 : BitVec 64) (p0hp h0 : Nat) (m : Locals) : Prop :=
  Pu2 D0 p0hp h0 m ∧ Bd m nN 0 WW

theorem pu3_w {D0 : BitVec 64} {p0hp h0 : Nat} {m : Locals} {v : ValueHOL 64}
    (h : Pu3 D0 p0hp h0 m) : Pu3 D0 p0hp h0 (m.update (wN, v)) :=
  ⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact h.1.1.1, mkb_upd (by decide) h.1.1.2⟩,
    bd_upd (by decide) h.1.2⟩, bd_upd (by decide) h.2⟩

theorem awSpec_rlp_put_u256 {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hU : CSumm σ X C H (nm "u256_to_be_min") ⟨[.any, .buf 32], [], [], false⟩ []) :
    AWSpec σ X C H (nm "rlp_put_u256") [] (fun vs _ h0 => PreWh h0 vs)
      (fun vs _ v _ => EncRetA vs v) := by
  refine awSpec_of_hoareG (PV := EncRetA) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bv, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_rlp_put_u256 (by decide) hl
  obtain ⟨D0, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨D1, hD1, hd1, hd2⟩ := hPre
  have hD01 : D0 = D1 := Option.some.inj hD1
  subst hD01
  have hn := num_facts2
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  refine hoareG_conseq (P := APre a (fun m => m.lookup dN = some (.val (.word D0)))) 
    (Q := AQ a (fun _ => True) (EncRetA [.val (.word D0), Bv])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact hla⟩) (fun _ _ _ _ h => h)
  unfold put256Body
  -- mark = heap_mark()
  refine hoareG_decCallAs' hK (asp_mark hK hC) (Lk := fun m => Pu1 D0 p.hp m) (L' := fun _ _ => False)
    ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL, w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s
  -- tmp = alloc(32)
  refine hoareG_decCallAs hK (asp_alloc hK hC) (L := Pu1 D0 p.hp) (L' := fun _ _ => False) ?_ ?_
    (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_cw _ 32) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  intro s2 vs2 v2 st2 hs2 hL2 hvs2 hI2 hRet2 hsh2
  obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet2
  rw [evs_cons (ev_cw _ 32) evs_nil] at hvs2
  cases hvs2
  have hn32 : (BitVec.ofNat 64 32).toNat = 32 := by simp
  rw [hn32] at hq3
  -- n = u256_to_be_min(v, tmp)
  refine hoareG_decCallAsP hK (asp_of_cs hK hU rfl (fun g hg => absurd hg (by simp)))
    (P := fun t => t = setVarHOLFinite tmpN (.val (.word q)) { st2 with locals := s2.locals })
    (L := Pu2 D0 p.hp h0) (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro t ht htt
    subst htt
    exact ⟨awInv_same hK hI2 rfl rfl rfl rfl,
      ⟨by rw [lk_set_ne _ _ (by decide)]; exact hL2.1,
        mkb_upd (by decide) hL2.2⟩, bd_new _ _ _ hq1 (by omega)⟩
  · intro t ht htt vs3 hvs3 callee
    subst htt
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs3
    rw [ev_lw (lk_set_self _ _ _)] at e2
    cases e2
    refine ⟨rfl, p'', (AllocImpl.ptrsOf_congr (s := st2) rfl).trans hp'', ?_⟩
    intro i pt v hpt hv
    cases i with
    | zero =>
        have : pt = PT.any := by simpa using hpt.symm
        subst this
        trivial
    | succ j =>
        cases j with
        | zero =>
            have : pt = PT.buf 32 := by simpa using hpt.symm
            subst this
            have hv' : v = .val (.word q) := by simpa using hv.symm
            subst hv'
            exact ⟨q, rfl, hq1, by omega⟩
        | succ k => simp at hpt
  · intro s3 vs3 v3 st3 hs3 hL3 hvs3 hI3 hRet3 hsh3
    obtain ⟨Nv, rfl⟩ := val_of_shapeEq_one' hsh3
    refine hoareG_pre (P := APre a (Pu3 D0 p.hp h0)) ?_ (fun t _ htt => by
      subst htt
      exact ⟨awInv_same hK hI3 rfl rfl rfl rfl,
        ⟨⟨⟨by rw [lk_set_ne _ _ (by decide)]; exact hL3.1.1,
          mkb_upd (by decide) hL3.1.2⟩, bd_upd (by decide) hL3.2⟩, bd_wd _ _ _⟩⟩)
    -- w = rlp_encode_bytes(dst, tmp, n)
    refine hoareG_decCallPtrA hK (asp_writer hK (footRet_encode_bytesA hC hA hT)) retKx_enc
      (lo := h0) (hi := 2 ^ 60) le_rfl le_rfl (L := Pu3 D0 p.hp h0) (L' := fun _ _ => False)
      (fun m h => ⟨D0, h.1.1.1, hd1, hd2⟩) (fun m v h => pu3_w h) (by decide) ?_
      (fun _ _ _ h => h.elim)
    intro s4
    refine hoareG_seqA (L2 := fun m => Pu3 D0 p.hp h0 m ∧ TWn h0 dN m)
      (hoareG_callAs hK (asp_release hK hC) ?_ (fun s vs v st hL hvs hRet => hL)) ?_
    · intro s5 hs5 hP5 vs hvs callee
      obtain ⟨w, hw, h1, h2, h3⟩ := hP5.2.1.1.1.2
      rw [evs_cons (ev_lw hw) evs_nil] at hvs
      cases hvs
      exact ⟨w, rfl, h1, h2, h3⟩
    · refine hoareG_returnA hK (fun s6 hs6 hL6 v6 hv6 => ?_)
      obtain ⟨hP3, T, k, hT, hw, h1, hk1, hb, hI⟩ := hL6
      rw [ev_lv, hw] at hv6
      cases hv6
      have hTD : T = D0 := by
        have := hT.symm.trans hP3.1.1.1
        simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at this
        exact this
      subst hTD
      intro D hD
      have hD' : T = D := Option.some.inj hD
      subst hD'
      exact ⟨hI, k, rfl, hk1, hb⟩

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_rlp_put_u256
