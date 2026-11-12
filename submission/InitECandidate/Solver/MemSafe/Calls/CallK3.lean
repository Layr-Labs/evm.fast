import InitECandidate.Solver.MemSafe.Calls.CallK4
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_call`: the block from `ext_code_of` (frames14)

**`oc_k3`**: `code = ext_code_of(code_address)` (`EcoHyp`: `code.1 + 63 < 2^64`),
`new_account_charged = 0`, `if vz == 0 { alive = is_account_alive(to); if alive == 0 {
new_account_charged = 1; charge_state_gas(183600) } }`, then `oc_k4`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Calls
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem lkn_cons {xs : List (MlS × ValueHOL 64)} {x n : MlS} {w : ValueHOL 64} (h : x ≠ n)
    (hx : xs.lookup x = none) : ((n, w) :: xs).lookup x = none := by
  have : (x == n) = false := by simpa using h
  simp only [List.lookup, this]
  exact hx

/-- Restoring a fresh binding keeps the other known locals. -/
theorem la_res {l : Locs} {n : MlS} {w : ValueHOL 64} {ys : List (MlS × ValueHOL 64)}
    (h : LocsAre l ((n, w) :: ys)) (hn : ys.lookup n = none) (o : Option (ValueHOL 64)) :
    LocsAre (l.resVarEq (n, o)) ys := by
  intro x v hx
  by_cases hxn : x = n
  · subst hxn; rw [hn] at hx; cases hx
  · rw [lookup_resVarEq_ne _ _ (Ne.symm hxn)]
    exact h x v (lk_cons_ne hxn hx)

/-- A shadowed binding may be dropped. -/
theorem la_shadow {l : Locs} {n : MlS} {w w' : ValueHOL 64} {ys : List (MlS × ValueHOL 64)}
    (h : LocsAre l ((n, w) :: (n, w') :: ys)) : LocsAre l ((n, w) :: ys) := by
  intro x v hx
  refine h x v ?_
  by_cases hxn : x = n
  · subst hxn
    simp only [List.lookup, beq_self_eq_true] at hx ⊢
    exact hx
  · have e : (x == n) = false := by simpa using hxn
    have hx' : ys.lookup x = some v := by simpa only [List.lookup, e] using hx
    exact lk_cons_ne hxn (lk_cons_ne hxn hx')

/-- Restoring a fresh binding under a newer one. -/
theorem la_res2 {l : Locs} {n1 n2 : MlS} {w1 w2 : ValueHOL 64} {ys : List (MlS × ValueHOL 64)}
    (h : LocsAre l ((n1, w1) :: (n2, w2) :: ys)) (h12 : n1 ≠ n2) (hn : ys.lookup n2 = none)
    (o : Option (ValueHOL 64)) : LocsAre (l.resVarEq (n2, o)) ((n1, w1) :: ys) := by
  intro x v hx
  by_cases hx2 : x = n2
  · subst hx2
    rw [lkn_cons (Ne.symm h12) hn] at hx
    cases hx
  · rw [lookup_resVarEq_ne _ _ (Ne.symm hx2)]
    apply h x v
    by_cases hx1 : x = n1
    · subst hx1
      simp only [List.lookup, beq_self_eq_true] at hx ⊢
      exact hx
    · have e1 : (x == n1) = false := by simpa using hx1
      have e2 : (x == n2) = false := by simpa using hx2
      simp only [List.lookup, e1, e2] at hx ⊢
      exact hx

def aliveSg : Sig := ⟨[.buf 20], [], [], true⟩
theorem alive_mem : (nm "is_account_alive", aliveSg, gaCs) ∈ ShardsJL.tab26 := by decide +kernel
theorem alive_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "is_account_alive") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem callE_alive : PlainOKB callE (nm "is_account_alive") aliveSg gaCs 1 := by decide +kernel

section proof
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs

/-- The argument `to = ev + 240` of a `.buf 20` callee. -/
theorem to_argsOK (hfs : fs = (e, c) :: rest) {u : State σ} {xs : List (MlS × ValueHOL 64)}
    (hL : LocsAre u.locals xs) (l9 : xs.lookup (nm "to") = some (.val (.word (e + BitVec.ofNat 64 240))))
    {vs : List (ValueHOL 64)} (hvs : evs u [lv (nm "to")] = some vs) {Γ1 : Gam} {p1 : Ptrs}
    (hrun : RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u p0 p1)
    (hch : ChainL guestC tEV tCK Γ1 u fs) : ArgsOK guestC Γ1 p1 [.buf 20] vs := by
  rw [evs_cons (la_ev hL l9) evs_nil] at hvs
  cases hvs
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, addr_bufOK hfs hrun hch⟩
  · simp at hpt

/-- **`ocK3`**. -/
theorem oc_k3 (hP : PreHyps σ) (hCH : CallHyps σ) (hfs : fs = (e, c) :: rest)
    (hPh : Phi s0 < 2 ^ 64) (ha0 : act s0 = 1) {d : Nat} {u0 : State σ} {CA : BitVec 64}
    (hu : KC [CA] d u0) {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {g0 g1 g2 g3 v0 v1 v2 v3 X0 X1 a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 MSG
      D0 D1 D2 cur : BitVec 64}
    (hfr : xs.lookup (nm "alive") = none)
    (lg : xs.lookup (nm "gasv") = some (wv [g0, g1, g2, g3]))
    (lv7 : xs.lookup (nm "value") = some (wv [v0, v1, v2, v3]))
    (lx : xs.lookup (nm "x") = some (wv [X0, X1]))
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (l8 : xs.lookup (nm "msg") = some (.val (.word MSG)))
    (l9 : xs.lookup (nm "to") = some (.val (.word (e + BitVec.ofNat 64 240))))
    (l10 : xs.lookup (nm "code_address") = some (.val (.word CA)))
    (l12 : xs.lookup (nm "dl") = some (wv [D0, D1, D2]))
    (h112 : fld u0.memory e 112 = MSG)
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat)
    (hcur : fld u0.memory e 32 = cur) (hX32 : X1.toNat % 32 = 0)
    (hXb : cur.toNat + X1.toNat < 2 ^ 37)
    (hout : Struct.isZeroF z0 z1 z2 z3 = 0 → (Struct.satWordF o0 o1 o2 o3).toNat +
      (Struct.satWordF z0 z1 z2 z3).toNat ≤ cur.toNat + X1.toNat)
    (hin : Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
      (Struct.satWordF b0 b1 b2 b3).toNat ≤ cur.toNat + X1.toNat)
    (hd : (mcgSt v0 v1 v2 v3).toNat + 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) ocK3 (QCall Γ0 s0) := by
  unfold ocK3
  refine hq_eco hCH.eco hfs ha0 hu (la_ev hL l10) fun C0 C1 st hk1 hcn hkE hk112 => ?_
  have hL1 := la_set (s := { st with locals := u0.locals }) hL (nm "code") (wv [C0, C1])
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => qcall_loc hq _)
  set u2 := setVarHOLFinite (nm "new_account_charged") (.val (.word (BitVec.ofNat 64 0)))
    (setVarHOLFinite (nm "code") (wv [C0, C1]) { st with locals := u0.locals }) with hu2def
  have hk2 : KC [] d u2 := kcall_congr hk1 rfl rfl rfl rfl
  have hL2 : LocsAre u2.locals ((nm "new_account_charged", .val (.word (BitVec.ofNat 64 0))) ::
      (nm "code", wv [C0, C1]) :: xs) := la_set hL1 _ _
  -- the slots to carry
  have hS : ∀ k ∈ [16, 232, 32, 112], fld u2.memory e k = fld u0.memory e k := by
    intro k hk
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl
    · exact hkE 2 (by simp [evProtSlots])
    · exact hkE 29 (by simp [evProtSlots])
    · exact hkE 4 (by simp [evProtSlots])
    · exact hk112
  let ys := (nm "code", wv [C0, C1]) :: xs
  have hfr' : ys.lookup (nm "alive") = none := lkn_cons (by decide) hfr
  let F : State σ → Prop := fun t => ∃ N : BitVec 64, KC [] d t ∧
    LocsAre t.locals ((nm "new_account_charged", .val (.word N)) :: ys) ∧
    ∀ k ∈ [16, 232, 32, 112], fld t.memory e k = fld u0.memory e k
  refine hoareG_seq (R := JP Γ0 s0 F) (hoareG_ite ?_ ?_)
    (fun r t _ hr _ h => h.elim (fun h' => absurd h'.1 hr) (fun h' => h'.2)) ?_
  · -- `alive = is_account_alive(to); if alive == 0 { nac = 1; charge_state_gas(183600) }`
    refine hoareG_pre (P := fun t => t = u2) ?_ (fun t _ h => h.1)
    unfold ocAlive
    refine hoareG_decCall (FunSpec.and (sumSpecA_relX (tabJL_guestR _ _ _ alive_mem)) alive_fp)
      ?_ ?_
    · intro s _ hs vs hvs callee va st3 ⟨hR, hfk⟩ _ _
      subst s
      obtain ⟨hk3, hkE3, hk3_112⟩ := kcall_tab hfs (fun g h => h) callE_alive hk2
        (fun Γ1 p1 hrun hch _ _ => to_argsOK hfs hL2 (lk_cons_ne (by decide)
          (lk_cons_ne (by decide) l9)) hvs hrun hch) hR (hfk (by simp [Good]) (not_abortive_ret va))
        (by simp [Good]) (not_abortive_ret va)
      have hS3 : ∀ k ∈ [16, 232, 32, 112], fld st3.memory e k = fld u0.memory e k := by
        intro k hk
        rw [← hS k hk]
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
        rcases hk with rfl | rfl | rfl | rfl
        · exact hkE3 2 (by simp [evProtSlots]) (by rw [evKs_ga]; simp)
        · exact hkE3 29 (by simp [evProtSlots]) (by rw [evKs_ga]; simp)
        · exact hkE3 4 (by simp [evProtSlots]) (by rw [evKs_ga]; simp)
        · exact hk3_112
      have hLa := la_set (s := { st3 with locals := u2.locals }) hL2 (nm "alive") va
      refine hoareG_ite ?_ ?_
      · -- `nac = 1; charge_state_gas(183600)`
        refine hoareG_seq (R := fun ro t => ro = none ∧ t = setVarHOLFinite (nm "new_account_charged")
            (.val (.word (BitVec.ofNat 64 1))) (setVarHOLFinite (nm "alive") va
              { st3 with locals := u2.locals }))
          (hoareG_assign fun t _ ⟨ht, _⟩ w hw _ => by
            subst ht; rw [ev_cw] at hw; cases hw; exact ⟨rfl, rfl⟩)
          (fun r t _ hr _ h => absurd h.1 hr) ?_
        refine hoareG_pre (P := fun t => t = setVarHOLFinite (nm "new_account_charged")
            (.val (.word (BitVec.ofNat 64 1))) (setVarHOLFinite (nm "alive") va
              { st3 with locals := u2.locals })) ?_ (fun t _ h => h.2)
        have hLb := la_set hLa (nm "new_account_charged") (.val (.word (BitVec.ofNat 64 1)))
        refine hoareG_unseq (hq_csg hfs (Q := fun r t => JP Γ0 s0 F r
            { t with locals := t.locals.resVarEq (nm "alive", u2.locals.lookup (nm "alive")) })
          ⟨fun r t l h => (postOKC_jp (p0 := p0) (fs := fs) ha0 F).locA r
              { t with locals := t.locals.resVarEq (nm "alive", u2.locals.lookup (nm "alive")) }
              (l.resVarEq (nm "alive", u2.locals.lookup (nm "alive"))) h,
            fun r t Bs d' habn hk => (postOKC_jp (p0 := p0) (fs := fs) ha0 F).abn r _ Bs d' habn
              fun hna => kcall_loc (hk hna) _⟩
          (kcall_congr hk3 rfl rfl rfl rfl) (by omega) fun st4 hk4 hkj4 => ?_)
        refine hoareG_skip fun t _ ht => Or.inl ⟨rfl, BitVec.ofNat 64 1, ?_, ?_, ?_⟩
        · rw [ht]; exact kcall_loc hk4 _
        · rw [ht]
          exact la_shadow (la_res2 hLb (by decide) (lkn_cons (by decide) hfr') _)
        · intro k hk
          rw [ht]
          show fld st4.memory e k = _
          have hk' : k = 16 ∨ k = 232 ∨ k = 32 ∨ k = 112 := by simpa using hk
          rw [hkj4 k (by omega) (by omega) (by omega) (by omega)]
          exact hS3 k hk
      · refine hoareG_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, BitVec.ofNat 64 0, ?_, ?_, ?_⟩
        · rw [ht]; exact kcall_loc (kcall_congr hk3 rfl rfl rfl rfl) _
        · rw [ht]; exact la_res hLa (lkn_cons (by decide) hfr') _
        · rw [ht]; exact hS3
    · intro s _ hs vs hvs callee r st3 ⟨hR, hfk⟩ _ habn
      subst s
      refine Or.inr ⟨by simp, (postOK_qc (p0 := p0) (fs := fs) ha0).abn r _ [] d habn
        fun hna => kcall_loc (kcall_tab hfs (fun g h => h) callE_alive hk2
          (fun Γ1 p1 hrun hch _ _ => to_argsOK hfs hL2 (lk_cons_ne (by decide)
            (lk_cons_ne (by decide) l9)) hvs hrun hch) hR (hfk (good_of_abn habn) hna)
          (good_of_abn habn) hna).1 _⟩
  · exact hoareG_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, BitVec.ofNat 64 0,
      by rw [ht]; exact hk2, by rw [ht]; exact hL2, by rw [ht]; exact hS⟩
  · intro t ht hJ hg
    rcases hJ with ⟨-, N, hkt, hLt, hSt⟩ | ⟨h', -⟩
    · have e16 := hSt 16 (by simp)
      have e232 := hSt 232 (by simp)
      have e32 := hSt 32 (by simp)
      have e112 := hSt 112 (by simp)
      refine oc_k4 hP hfs hPh ha0 hkt hLt
        (lk_cons_ne (by decide) (lk_cons_ne (by decide) lg))
        (lk_cons_ne (by decide) (lk_cons_ne (by decide) lv7))
        (lk_cons_ne (by decide) (lk_cons_ne (by decide) lx))
        (lk_cons_ne (by decide) (lk_cons_ne (by decide) l1))
        (lk_cons_ne (by decide) (lk_cons_ne (by decide) l2))
        (lk_cons_ne (by decide) (lk_cons_ne (by decide) l3))
        (lk_cons_ne (by decide) (lk_cons_ne (by decide) l4))
        (lk_cons_ne (by decide) (lk_cons_ne (by decide) l8))
        (lk_cons_ne (by decide) (lk_cons_ne (by decide) l9))
        (lk_cons_ne (by decide) (lk_cons_ne (by decide) l10))
        (lk_cons_ne (by decide) rfl)
        (lk_cons_ne (by decide) (lk_cons_ne (by decide) l12)) rfl
        (by rw [e112, h112]) (by rw [e16, e232]; exact hsp) (by rw [e32, hcur]) hX32 hXb hout hin hcn hd
        t ht rfl hg
    · exact absurd rfl h'

end proof

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.la_res
#print axioms InitECandidate.Solver.MemSafe.Calls.la_shadow
#print axioms InitECandidate.Solver.MemSafe.Calls.la_res2
#print axioms InitECandidate.Solver.MemSafe.Calls.oc_k3
