import InitECandidate.Solver.MemSafe.BalEnc.Facts
import InitECandidate.Solver.MemSafe.BalEnc.GetMiss
import InitECandidate.Solver.MemSafe.BalEnc.Rules
import InitECandidate.Solver.MemSafe.Ra.Callees
import InitECandidate.Solver.MemSafe.Aw.PutU256
import InitECandidate.Solver.MemSafe.Aw.Rd

set_option autoImplicit false

/-!
# The callees of the encoders as `ASp`s at `guestCS` / `nwH guestHooksR`

All statements are at `X = guestCtx` for entry data `a` with `CsE a`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

/-- Strengthen the precondition of an `ASp` using the invariant. -/
theorem asp_pre_inv {a : AwE σ} {X : Ctx 64} {f : MlS} {Pre1 Pre2 : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (h : ASp a X f Pre1 Ret)
    (hP : ∀ vs s, AwInv a s → Pre2 vs s → Pre1 vs s) : ASp a X f Pre2 Ret :=
  fun vs body callee rs hl s hs hloc r hr hinv hpre v hv =>
    h vs body callee rs hl s hs hloc r hr hinv (hP vs s hinv hpre) v hv

/-- **`htab_get` on a storage-changes table**: the found value is a list header of the entry
typing, a missing key gives `0`. -/
theorem asp_htab_get {a : AwE σ} (hK : AwOK a) (hc : CsE a) :
    ASp a guestCtx (nm "htab_get")
      (fun vs _ => ∃ T K : BitVec 64, vs = [.val (.word T), .val (.word K)] ∧
        Fits a.Γ0 (.ptr tHTl32) T)
      (fun _ v _ => ∀ A B : BitVec 64, v = .rStruct [.val (.word A), .val (.word B)] →
        (A ≠ 0 → Fits a.Γ0 (.ptr tLSTc) B) ∧ (A = 0 → B = 0)) := by
  have hC := SourceCost.guestCtx_code
  have hJ := HtabEntries.funSpec_get_j (σ := σ) hC
  have hF := Bal.funSpec_get_fits (σ := σ) (th := tHTl32) (by decide)
  have hM := funSpec_get_miss (σ := σ) (X := guestCtx) hC
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  subst hv
  obtain ⟨T, K, rfl, hfit⟩ := hP
  obtain ⟨hm, hgl, hd, hbe, -⟩ := hJ _ body callee rs hl s hs hloc _ hr
  have hgs : (evaluateHOLFiniteState s body).2.globals = s.globals :=
    AllocImpl.hfm_ext (funext hgl)
  refine ⟨awInv_same hK hinv hm hgs hd hbe, ?_⟩
  obtain ⟨Γ', p', hG, hp, hE, hS, -⟩ := hinv
  have hGc := csE_g hc hG
  intro A B hAB
  refine ⟨fun hA => ?_, fun hA => hM _ body callee rs hl s hs hloc _ hr _ rfl A B hAB hA⟩
  have h1 := hF _ body callee rs hl s hs hloc _ hr Γ' hGc T K rfl (fits_ext hE hfit) _ rfl A B hAB hA
  have hv32 : valK tHTl32 = .ptr tLSTc := by decide
  rw [hv32] at h1
  exact fits_sub hS (obj_pos hGc) h1


theorem has_C : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_has")
    ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% InitECandidate.Solver.MemSafe.Rec.tab26_guestR

/-- **`htab_has`**: a pure table entry. -/
theorem asp_htab_has {a : AwE σ} (hK : AwOK a) (hc : CsE a) :
    ASp a guestCtx (nm "htab_has") (fun vs _ => ∃ A B, vs = [A, B]) (fun _ _ _ => True) := by
  have hC := SourceCost.guestCtx_code
  have hf : CSumm σ guestCtx a.C a.H (nm "htab_has") ⟨[.any, .any], [], [], false⟩ [] := by
    rw [hc.C, hc.H]
    exact csumm_cs (fun pt hpt => by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hpt
      rcases hpt with rfl | rfl <;> exact ⟨(fun n h => nomatch h), (fun i c d h => nomatch h)⟩)
      (Bal.funSpec_bal_gw4 hC (f := nm "htab_has") (by decide_cbv)) has_C
  refine asp_pre_inv (asp_of_cs hK hf rfl (fun g hg => absurd hg (by simp))) ?_
  intro vs s hinv ⟨A, B, hvs⟩
  obtain ⟨Γ', p', hG, hp, -⟩ := hinv
  subst hvs
  refine ⟨rfl, p', hp, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i <;> simp at hpt <;> subst hpt <;> trivial

/-- **`u256_from_be`**: reads only. -/
theorem asp_u256_from_be {a : AwE σ} (hK : AwOK a) (hc : CsE a) :
    ASp a guestCtx (nm "u256_from_be") (fun _ _ => True) (fun _ _ _ => True) := by
  have hWS : ScalarGlob a.C wsN 640 := by
    rw [hc.C]; exact scalarGlob_cs scalarGlob_u256_ws
  exact asp_of_rd hK hWS (rdSpec_u256_from_be SourceCost.guestCtx_code)

/-- `rlp_put_u256` as an above-writer at `guestCS`. -/
theorem put_cs : AWSpec σ guestCtx guestCS (nwH (guestHooksR (σ := σ))) pu []
    (fun vs _ h0 => PreWh h0 vs) (fun vs _ v _ => EncRetA vs v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  exact awSpec_to_cs (Bal.funSpec_bal_gw4 hF.hX (f := pu) (by decide_cbv))
    (awSpec_rlp_put_u256 hF.hX hF.hal domBelow_guestCtx hF.hH tagSlots_guestC
    Annot.drv_allocG Ra.toBeMin_C)


/-- `sort_elems` at `guestCS`. -/
theorem sort_cs : AWSpecG σ guestCtx guestCS (nwH (guestHooksR (σ := σ))) (nm "sort_elems") []
    (fun vs s Γ h0 => SrtPre guestCS vs s Γ h0) (fun _ _ _ _ => True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  exact awSpecG_sort_elems hF.hX hF.hal domBelow_guestCtx hooksLawful_cs tagSlots_cs allocGlobs_cs

/-- **`sort_elems` on a list of the entry typing, in place.** The arguments are the header's
pointer and count words (read from the call state), the element size `lstE T` and any `tmp`. -/
theorem asp_sort_list {a : AwE σ} (hK : AwOK a) (hc : CsE a) :
    ASp a guestCtx (nm "sort_elems")
      (fun vs s => ∃ (l : BitVec 64) (T : Nat) (Tm : BitVec 64), T ∈ lstTys ∧
        Fits a.Γ0 (.ptr T) l ∧ vs = [.val (.word (rd s.memory (l + BitVec.ofNat 64 0))),
          .val (.word (rd s.memory (l + BitVec.ofNat 64 8))),
          .val (.word (BitVec.ofNat 64 (lstE T))), .val (.word (BitVec.ofNat 64 0)),
          .val (.word Tm)])
      (fun _ _ _ => True) := by
  have hSort : AWSpecG σ guestCtx a.C a.H (nm "sort_elems") []
      (fun vs s Γ h0 => SrtPre a.C vs s Γ h0) (fun _ _ _ _ => True) := by
    rw [hc.C, hc.H]; exact sort_cs
  refine asp_of_awG2 hK hSort (fun g hg => absurd hg (by simp)) ?_ (fun _ _ _ _ _ => trivial)
  intro vs s Γ' hG hE ⟨l, T, Tm, hT, hfit, hvs⟩ P N E hP hN hE' hNb
  subst hvs
  have e1 : rd s.memory (l + BitVec.ofNat 64 0) = P := Option.some.inj hP
  have e2 : rd s.memory (l + BitVec.ofNat 64 8) = N := Option.some.inj hN
  have e3 : BitVec.ofNat 64 (lstE T) = E := Option.some.inj hE'
  subst e1 e2 e3
  have hEt : (BitVec.ofNat 64 (lstE T)).toNat = lstE T := by
    have := lstE_pos T hT
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  obtain ⟨b1, b2, b3, b4⟩ := list_sort_facts hc hT hfit hG hE hNb
  rw [hEt]
  exact ⟨b1, b2, b3, fun x hx => Or.inr (b4 x hx)⟩

/-- **`sort_elems` on the fresh key array**: any array at or above `h0`. -/
theorem asp_sort_keys {a : AwE σ} (hK : AwOK a) (hc : CsE a) :
    ASp a guestCtx (nm "sort_elems")
      (fun vs _ => ∃ O K Tm : BitVec 64, vs = [.val (.word O), .val (.word K),
          .val (.word (BitVec.ofNat 64 32)), .val (.word (BitVec.ofNat 64 2)), .val (.word Tm)] ∧
        a.h0 ≤ O.toNat ∧ (K.toNat < 2 ^ 63 → K.toNat ≤ domTop ∧ K.toNat * 32 ≤ domTop + 64 ∧
          O.toNat + K.toNat * 32 ≤ scratchEnd))
      (fun _ _ _ => True) := by
  have hSort : AWSpecG σ guestCtx a.C a.H (nm "sort_elems") []
      (fun vs s Γ h0 => SrtPre a.C vs s Γ h0) (fun _ _ _ _ => True) := by
    rw [hc.C, hc.H]; exact sort_cs
  refine asp_of_awG2 hK hSort (fun g hg => absurd hg (by simp)) ?_ (fun _ _ _ _ _ => trivial)
  intro vs s Γ' hG hE ⟨O, K, Tm, hvs, ho, hbig⟩ P N E hP hN hE' hNb
  subst hvs
  have e1 : O = P := Option.some.inj hP
  have e2 : K = N := Option.some.inj hN
  have e3 : BitVec.ofNat 64 32 = E := Option.some.inj hE'
  subst e1 e2 e3
  have h32 : (BitVec.ofNat 64 32).toNat = 32 := by decide
  obtain ⟨b1, b2, b3⟩ := hbig hNb
  refine ⟨b1, by rw [h32]; exact b2, by rw [h32]; exact b3, fun x hx => Or.inl ?_⟩
  obtain ⟨hx1, hx2, hx3⟩ := hx
  have h8 : a.h0 % 8 = 0 := hK.h8
  omega

/-- The result of `htab_keys` / `sorted_keys32`: `<out, n>` with `out` above the entry heap pointer
and the array inside the heap. -/
def KeysRet (a : AwE σ) (v : ValueHOL 64) : Prop :=
  ∃ O N : BitVec 64, v = .rStruct [.val (.word O), .val (.word N)] ∧ a.p0.hp ≤ O.toNat ∧
    (N.toNat < 2 ^ 63 → N.toNat * 32 ≤ domTop + 64 ∧ O.toNat + N.toNat * 32 + 8 ≤ heapEnd)

theorem keysRet_of_post {a : AwE σ} {vs : List (ValueHOL 64)} {p : Ptrs} {v : ValueHOL 64}
    (hp : a.p0.hp ≤ p.hp) (h : HkPost' vs p v) : KeysRet a v := by
  obtain ⟨S0, hS0, O, N, h1, h2, h3⟩ := h
  have hmul : N.toNat * 32 ≤ N.toNat * S0.toNat := Nat.mul_le_mul_left _ hS0
  refine ⟨O, N, h1, le_trans hp h2, fun hN => ?_⟩
  have := h3 hN
  omega

/-- `htab_keys` on a table of the entry typing. -/
theorem asp_htab_keys {a : AwE σ} (hK : AwOK a) (hc : CsE a) {th : Nat} (hth : th ∈ hdrTys)
    (hKL : htKL th = 32) :
    ASp a guestCtx (nm "htab_keys")
      (fun vs s => ∃ T : BitVec 64, vs = [.val (.word T)] ∧ Fits a.Γ0 (.ptr th) T ∧
        s.memaddrs = guestCtx.memaddrs)
      (fun _ v _ => KeysRet a v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hAW : AWSpec σ guestCtx a.C a.H (nm "htab_keys") [] (fun vs s _ => HkPre vs s)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPost' vs p v) := by
    rw [hc.C, hc.H]
    exact awSpec_htab_keys' hF.hX hF.hal domBelow_guestCtx hooksLawful_cs tagSlots_cs allocGlobs_cs
  refine asp_pre_inv (asp_of_aw2 hK hAW (fun g hg => absurd hg (by simp))
    (Ret := fun _ v _ => KeysRet a v) (fun vs s v t ⟨p1, hp1, hle1⟩ hpost =>
      keysRet_of_post hle1 (hpost p1 hp1))) ?_
  intro vs s hinv ⟨T, hvs, hfit, hd⟩
  subst hvs
  intro T' hT'
  have e : T = T' := Option.some.inj hT'
  subst e
  exact tab_stride hc hinv hd hth hKL hfit

/-- `sorted_keys32` on a storage-changes table. -/
theorem asp_sorted_keys32 {a : AwE σ} (hK : AwOK a) (hc : CsE a) :
    ASp a guestCtx (nm "sorted_keys32")
      (fun vs s => ∃ T Tm : BitVec 64, vs = [.val (.word T), .val (.word Tm)] ∧
        Fits a.Γ0 (.ptr tHTl32) T ∧ s.memaddrs = guestCtx.memaddrs)
      (fun _ v _ => KeysRet a v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hAW : AWSpec σ guestCtx a.C a.H (nm "sorted_keys32") [] (fun vs s _ => HkPre vs s)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPost' vs p v) := by
    rw [hc.C, hc.H]
    exact awSpec_sorted_keys32' hF.hX hooksLawful_cs tagSlots_cs allocGlobs_cs
      (awSpec_htab_keys' hF.hX hF.hal domBelow_guestCtx hooksLawful_cs tagSlots_cs allocGlobs_cs)
      sort_cs
  refine asp_pre_inv (asp_of_aw2 hK hAW (fun g hg => absurd hg (by simp))
    (Ret := fun _ v _ => KeysRet a v) (fun vs s v t ⟨p1, hp1, hle1⟩ hpost =>
      keysRet_of_post hle1 (hpost p1 hp1))) ?_
  intro vs s hinv ⟨T, Tm, hvs, hfit, hd⟩
  subst hvs
  intro T' hT'
  have e : T = T' := Option.some.inj hT'
  subst e
  exact tab_stride hc hinv hd (by decide) (by decide) hfit

end InitECandidate.Solver.MemSafe.BalEnc
