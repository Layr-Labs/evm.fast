import InitECandidate.Solver.MemSafe.Ops7.Defs
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The shared cost prefix of the CREATE handlers (sonnet-create)

**`cr_cost`**: `n = sat_word(msize); x = extend_memory_cost1(mstart, msize); w = words_of(n);
cost = add_sat(<12000 + ..w..>, x.0); charge_gas(cost); K` on `KCall []`. The continuation sees
`KC [] cost` (`cost ≥ 12000`), the stack room, and the `extend_memory` side conditions.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ops7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem lk_ne {a x : MlS} {v : ValueHOL 64} {xs : List (MlS × ValueHOL 64)}
    (h : (a == x) = false) : ((x, v) :: xs).lookup a = xs.lookup a := by
  simp [List.lookup, h]

syntax "lkq" : tactic
macro_rules
  | `(tactic| lkq) => `(tactic| first | assumption | rfl | (refine (lk_ne (by decide)).trans ?_; lkq))

theorem cr_fld_charge16 (m : Mem) (e a : BitVec 64) : fld (chargeMem m e a) e 16 = fld m e 16 := by
  unfold chargeMem fld
  rw [rd_upd, if_neg (off_ne e (by decide) (by decide) (by decide)), rd_upd,
    if_neg (off_ne e (by decide) (by decide) (by decide))]

theorem cr_fld_charge232 (m : Mem) (e a : BitVec 64) :
    fld (chargeMem m e a) e 232 = fld m e 232 := by
  unfold chargeMem fld
  rw [rd_upd, if_neg (off_ne e (by decide) (by decide) (by decide)), rd_upd,
    if_neg (off_ne e (by decide) (by decide) (by decide))]

theorem cr_wordsOf_lt (n : BitVec 64) : (Struct.wordsOfF n).toNat < 2 ^ 59 := by
  unfold Struct.wordsOfF
  rw [BitVec.toNat_ushiftRight]
  have := (Struct.ceil32F n).isLt
  omega

section cost
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

theorem cr_cost (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) (ha0 : act s0 = 1)
    {ce : ExpHOL 64} {c0f : BitVec 64 → BitVec 64}
    (hce : ∀ (t : State σ) (W : BitVec 64), t.locals.lookup (nm "w") = some (.val (.word W)) →
      ev t ce = some (.val (.word (c0f W))))
    (hc0 : ∀ W : BitVec 64, W.toNat < 2 ^ 59 → 12000 ≤ (c0f W).toNat)
    {K : ProgHOL 64} {u0 : State σ} (hu : KC [] 0 u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {a0 a1 a2 a3 b0 b1 b2 b3 : BitVec 64}
    (hst : xs.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]))
    (hsz : xs.lookup (nm "msize") = some (wv [b0, b1, b2, b3]))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat)
    (hk : ∀ (st : State σ) (X1 X2 W cv : BitVec 64), KC [] cv.toNat st →
      LocsAre st.locals ((nm "cost", .val (.word cv)) :: (nm "w", .val (.word W)) ::
        (nm "x", wv [X1, X2]) :: (nm "n", .val (.word (Struct.satWordF b0 b1 b2 b3))) :: xs) →
      12000 ≤ cv.toNat → (fld st.memory e 16).toNat < (fld st.memory e 232).toNat →
      X2.toNat % 32 = 0 → (fld st.memory e 32).toNat + X2.toNat ≤ 2 ^ 40 →
      HoareG σ guestCtx (fun t => t = st) K QC) :
    HoareG σ guestCtx (fun t => t = u0) (crCostSeg ce K) QC := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hQ : PostOK Γ0 s0 p0 fs QC := postOK_qc ha0
  unfold crCostSeg
  -- n = sat_word(msize)
  refine hq_pure hQ (Struct.pure_sat_word guestCtx_code) ?_
  intro vs hvs callee nv st1 hm1 hg1 hd1 hbe1 hRv1 hsh1
  have hz0 : ev u0 (lv (nm "msize")) = some (wv [b0, b1, b2, b3]) := la_ev hxs hsz
  rw [evs_cons hz0 evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hnv := hRv1 b0 b1 b2 b3 rfl
  subst hnv
  have hK1 : KC [] 0 (setVarHOLFinite (nm "n") (.val (.word (Struct.satWordF b0 b1 b2 b3)))
      { st1 with locals := u0.locals }) := kcall_congr hu hm1 hg1 hd1 hbe1
  have hxs1 := la_set (s := { st1 with locals := u0.locals }) hxs (nm "n")
    (.val (.word (Struct.satWordF b0 b1 b2 b3)))
  have hsp1 : (fld st1.memory e 16).toNat < (fld st1.memory e 232).toNat := by rw [hm1]; exact hsp
  set t1 := setVarHOLFinite (nm "n") (.val (.word (Struct.satWordF b0 b1 b2 b3)))
      { st1 with locals := u0.locals } with ht1
  have hm_t1 : t1.memory = u0.memory := hm1
  -- x = extend_memory_cost1(mstart, msize)
  refine hq_pure hQ (Struct.pure_extend_memory_cost1 guestCtx_code) ?_
  intro vs hvs calleeB xv st2 hm2 hg2 hd2 hbe2 hRv2 hsh2
  have hs1 : ev t1 (lv (nm "mstart")) = some (wv [a0, a1, a2, a3]) := la_ev hxs1 (by lkq)
  have hz1 : ev t1 (lv (nm "msize")) = some (wv [b0, b1, b2, b3]) := la_ev hxs1 (by lkq)
  rw [evs_cons hs1 (evs_cons hz1 evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hE : (callEntryStateHOLFinite t1 calleeB).globals.lookup Struct.gEv =
      some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs (kcall_gk (kcall_congr hK1
      (t := callEntryStateHOLFinite t1 calleeB) rfl rfl rfl rfl)))
  have hvv := hRv2 a0 a1 a2 a3 b0 b1 b2 b3 e rfl hE
  obtain ⟨X1, X2, hCX⟩ : ∃ X1 X2, Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3
      (rd (callEntryStateHOLFinite t1 calleeB).memory (e + BitVec.ofNat 64 32)) = (X1, X2) :=
    ⟨_, _, rfl⟩
  rw [hCX] at hvv
  simp only at hvv
  subst hvv
  have hK2 : KC [] 0 (setVarHOLFinite (nm "x") (wv [X1, X2]) { st2 with locals := t1.locals }) :=
    kcall_congr hK1 hm2 hg2 hd2 hbe2
  have hxs2 := la_set (s := { st2 with locals := t1.locals }) hxs1 (nm "x") (wv [X1, X2])
  have hsp2 : (fld st2.memory e 16).toNat < (fld st2.memory e 232).toNat := by
    rw [hm2]; exact hsp1
  -- the memory length facts (for `emc1_ok`, later)
  obtain ⟨hc32, hcb⟩ := gk_memlen hfs (kcall_gk hK1)
  set t2 := setVarHOLFinite (nm "x") (wv [X1, X2]) { st2 with locals := t1.locals } with ht2
  have hm_t2 : t2.memory = u0.memory := by rw [← hm_t1]; exact hm2
  -- w = words_of(n)
  refine hq_pure hQ (Struct.pure_words_of guestCtx_code) ?_
  intro vs hvs callee wv' st3 hm3 hg3 hd3 hbe3 hRv3 hsh3
  have hn2 : ev t2 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) :=
    la_ev hxs2 (by lkq)
  rw [evs_cons hn2 evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hwv := hRv3 _ rfl
  subst hwv
  have hK3 : KC [] 0 (setVarHOLFinite (nm "w")
      (.val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))) { st3 with locals := t2.locals }) :=
    kcall_congr hK2 hm3 hg3 hd3 hbe3
  have hxs3 := la_set (s := { st3 with locals := t2.locals }) hxs2 (nm "w")
    (.val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3))))
  have hsp3 : (fld st3.memory e 16).toNat < (fld st3.memory e 232).toNat := by
    rw [hm3]; exact hsp2
  set W := Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3) with hW
  set t3 := setVarHOLFinite (nm "w") (.val (.word W)) { st3 with locals := t2.locals } with ht3
  have hm_t3 : t3.memory = u0.memory := by rw [← hm_t2]; exact hm3
  -- cost = add_sat(ce, x.0)
  refine hq_pure hQ (Struct.pure_add_sat guestCtx_code) ?_
  intro vs hvs callee cvv st4 hm4 hg4 hd4 hbe4 hRv4 hsh4
  have hwl : t3.locals.lookup (nm "w") = some (.val (.word W)) := hxs3 _ _ (by lkq)
  have hxl : t3.locals.lookup (nm "x") = some (wv [X1, X2]) := hxs3 _ _ (by lkq)
  have hc0e : ev t3 ce = some (.val (.word (c0f W))) := hce t3 W hwl
  have hx0 : ev t3 (Struct.rf 0 "x") = some (.val (.word X1)) :=
    Struct.ev_wv_word hxl (i := 0) (by simp)
  rw [evs_cons hc0e (evs_cons hx0 evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hcv := hRv4 _ _ rfl
  subst hcv
  set cv := Struct.addSatF (c0f W) X1 with hcv
  have hK4 : KC [] 0 (setVarHOLFinite (nm "cost") (.val (.word cv)) { st4 with locals := t3.locals }) :=
    kcall_congr hK3 hm4 hg4 hd4 hbe4
  have hxs4 := la_set (s := { st4 with locals := t3.locals }) hxs3 (nm "cost") (.val (.word cv))
  have hsp4 : (fld st4.memory e 16).toNat < (fld st4.memory e 232).toNat := by
    rw [hm4]; exact hsp3
  set t4 := setVarHOLFinite (nm "cost") (.val (.word cv)) { st4 with locals := t3.locals } with ht4
  have hm_t4 : t4.memory = u0.memory := by rw [← hm_t3]; exact hm4
  -- charge_gas(cost)
  have hcost : ev t4 (lv (nm "cost")) = some (.val (.word cv)) := la_ev hxs4 (by rfl)
  refine hq_charge hfs hP hQ.toC hK4 hcost ?_
  intro st5 hK5 ha1 hale hmem5 hglob5
  have hcvlt : cv.toNat + 1 < 2 ^ 64 := ha1
  have hWlt : W.toNat < 2 ^ 59 := cr_wordsOf_lt _
  have hc0W := hc0 W hWlt
  have hcvge : 12000 ≤ cv.toNat := by
    have : (c0f W).toNat ≤ cv.toNat := by rw [hcv]; exact Struct.addSatF_ge _ _
    omega
  have hX1 : X1 ≠ Struct.wMax := by
    intro h
    have h1 : cv = Struct.wMax := by rw [hcv, h]; exact Struct.addSatF_max _
    rw [h1, Struct.wMax_toNat] at hcvlt
    omega
  have hem : (Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3
      (rd (callEntryStateHOLFinite t1 calleeB).memory (e + BitVec.ofNat 64 32))).1 ≠ Struct.wMax := by
    rw [hCX]; exact hX1
  obtain ⟨h32, hlt, -⟩ := Struct.emc1_ok
    (cur := rd (callEntryStateHOLFinite t1 calleeB).memory (e + BitVec.ofNat 64 32)) hc32 hcb hem
  rw [hCX] at h32 hlt
  simp only at h32 hlt
  have hlt' : (fld t1.memory e 32).toNat + X2.toNat < 2 ^ 37 := hlt
  rw [hm_t1] at hlt'
  have hmem32 : fld st5.memory e 32 = fld u0.memory e 32 := by rw [hmem5, fld_charge32, hm_t4]
  have hK5' : KC [] cv.toNat st5 := by simpa using hK5
  refine hk { st5 with locals := t4.locals } X1 X2 W cv (kcall_congr hK5' rfl rfl rfl rfl) hxs4
    hcvge ?_ h32 ?_
  · show (fld st5.memory e 16).toNat < (fld st5.memory e 232).toNat
    rw [hmem5, cr_fld_charge16, cr_fld_charge232, hm_t4]; exact hsp
  · show (fld st5.memory e 32).toNat + X2.toNat ≤ 2 ^ 40
    rw [hmem32]
    have h37 : (2 : Nat) ^ 37 ≤ 2 ^ 40 := Nat.pow_le_pow_right (by norm_num) (by norm_num)
    omega

end cost

end InitECandidate.Solver.MemSafe.Ops7

#print axioms InitECandidate.Solver.MemSafe.Ops7.cr_cost
