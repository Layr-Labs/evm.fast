import InitECandidate.Solver.MemSafe.Calls.CcK1
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_callcode`'s bounded step spec (frames15)

* `kcall_msg32`: the loaded target `rd mem (EV 112 + 32)` joins the tracked blocks (`BufOK 20` from
  `ChainE`'s `GP` at offset 32);
* `cc_k0`: `msg = EV 112`, `to = lds(msg+32)` (carried as a `KCall` block), then `cc_k1`;
* `cc_body`: the seven `stack_pop`s and `to_address_masked`, then `cc_k0`;
* **`j_op_callcode_of hP hCH : OpStepB σ guestCtx guestHooksR (nm "op_callcode")`**.
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

section proof
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs

/-- **The message's `CURRENT_TARGET` pointer is a tracked block**: `rd mem (EV 112 + 32)`. -/
theorem kcall_msg32 (hfs : fs = (e, c) :: rest) {Bs : List (BitVec 64)} {d : Nat} {u : State σ}
    (hu : KC Bs d u) :
    KC (rd u.memory (fld u.memory e 112 + BitVec.ofNat 64 32) :: Bs) d u := by
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, hB⟩, hΦ, ha⟩ := hu
  refine ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, fun b hb => ?_⟩, hΦ, ha⟩
  rcases List.mem_cons.mp hb with rfl | hb
  · have hgp := (hE.1 p1 hrun.2.1 (e, c) (by rw [hfs]; exact List.mem_cons_self ..)).2.1 32
      (by simp [msgXOffs])
    have hmsg : msgOf u.memory (e, c) = fld u.memory e 112 := rfl
    rw [hmsg] at hgp
    exact hgp
  · exact hB b hb

/-- **`ccK0`**. -/
theorem cc_k0 (hP : PreHyps σ) (hCH : CallHyps σ) (hfs : fs = (e, c) :: rest)
    (hPh : Phi s0 < 2 ^ 64) (ha0 : act s0 = 1) {Bs : List (BitVec 64)} {u0 : State σ}
    (hu : KC Bs 0 u0)
    {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {g0 g1 g2 g3 v0 v1 v2 v3 a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 : BitVec 64}
    (lg : xs.lookup (nm "gasv") = some (wv [g0, g1, g2, g3]))
    (lv7 : xs.lookup (nm "value") = some (wv [v0, v1, v2, v3]))
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (l9 : xs.lookup (nm "code_address0") = some (.val (.word (e + BitVec.ofNat 64 240))))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) :
    HoareG σ guestCtx (fun t => t = u0) ccK0 (QCall Γ0 s0) := by
  unfold ccK0
  -- `msg = EV 112`
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  obtain ⟨hv', -⟩ := ev_gLoad_eq (g := "ev") (k := 112) (gk_gword hfs (kcall_gk hu)) hv
  subst hv'
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => qcall_loc hq _)
  set MSG := fld u0.memory e 112 with hMSG
  set u1 := setVarHOLFinite (nm "msg") (.val (.word MSG)) u0 with hu1def
  have hu1 : KC Bs 0 u1 := kcall_congr hu rfl rfl rfl rfl
  have hL1 := la_set hL (nm "msg") (.val (.word MSG))
  -- `to = lds(msg + 32)`
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (la_ev hL1 rfl) (ev_cw _ 32)] at hw
  cases hw
  rw [mem_rd u1.memory (MSG + BitVec.ofNat 64 32)]
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => qcall_loc hq _)
  set TO := rd u1.memory (MSG + BitVec.ofNat 64 32) with hTOdef
  set u2 := setVarHOLFinite (nm "to") (.val (.word TO)) u1 with hu2def
  have hu2 : KC (TO :: Bs) 0 u2 := kcall_congr (kcall_msg32 hfs hu1) rfl rfl rfl rfl
  have hL2 : LocsAre u2.locals ((nm "to", .val (.word TO)) :: (nm "msg", .val (.word MSG)) :: xs) :=
    la_set hL1 _ _
  exact cc_k1 hP hCH hfs hPh ha0 hu2 hL2
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) lg))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) lv7))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l1))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l2))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l3))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l4))
    rfl (List.mem_cons_self ..)
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l9))
    (by exact hsp)

/-- **`op_call`'s body**: the pops, `to_address_masked`, then `oc_k0`. -/
theorem cc_body (hP : PreHyps σ) (hCH : CallHyps σ) (hfs : fs = (e, c) :: rest)
    (hPh : Phi s0 < 2 ^ 64) (ha0 : act s0 = 1) {u0 : State σ} (hu : KC [] 0 u0) :
    HoareG σ guestCtx (fun t => t = u0) ccBody (QCall Γ0 s0) := by
  unfold ccBody
  have hL0 := la_nil u0.locals
  -- `gasv`, `tov`
  refine hq_pop hfs ha0 hu fun v1 st1 hk1 hv1 _ _ _ => ?_
  obtain ⟨w1, hw1, rfl⟩ := hv1
  obtain ⟨g0, g1, g2, g3, rfl⟩ := Struct.wv4 hw1
  have hL1 := la_set (s := { st1 with locals := u0.locals }) hL0 (nm "gasv") (wv [g0, g1, g2, g3])
  refine hq_pop hfs ha0 (kcall_congr hk1 rfl rfl rfl rfl) fun v2 st2 hk2 hv2 _ _ _ => ?_
  obtain ⟨w2, hw2, rfl⟩ := hv2
  have hL2 := la_set (s := { st2 with locals := _ }) hL1 (nm "cav") (wv w2)
  -- `to = to_address_masked(tov)`
  refine hq_tab hfs ha0 (fun g h => h) tam_memC tam_fpC callE_tam (tam_spec (σ := σ))
    (kcall_congr hk2 rfl rfl rfl rfl)
    (fun vs hvs Γ1 p1 _ _ _ _ => argsOK_any (by simp [tamSgC]) (by rw [evs_len hvs]; rfl))
    fun vs3 hvs3 callee3 v3 st3 hk3 _ _ hR3 _ => ?_
  obtain ⟨G, hG, rfl⟩ := hR3 (by simp [Good]) v3 rfl
  have hGe : G = e := by
    have := gk_gword hfs (kcall_gk hk2)
    exact Option.some.inj (hG.symm.trans this)
  subst hGe
  have hL3 := la_set (s := { st3 with locals := _ }) hL2 (nm "code_address0") (.val (.word (G + BitVec.ofNat 64 240)))
  -- `value`, `in_start`, `in_size`, `out_start`, `out_size`
  refine hq_pop hfs ha0 (kcall_congr hk3 rfl rfl rfl rfl) fun v4 st4 hk4 hv4 _ _ _ => ?_
  obtain ⟨w4, hw4, rfl⟩ := hv4
  obtain ⟨v0, v1', v2', v3', rfl⟩ := Struct.wv4 hw4
  have hL4 := la_set (s := { st4 with locals := _ }) hL3 (nm "value") (wv [v0, v1', v2', v3'])
  refine hq_pop hfs ha0 (kcall_congr hk4 rfl rfl rfl rfl) fun v5 st5 hk5 hv5 _ _ _ => ?_
  obtain ⟨w5, hw5, rfl⟩ := hv5
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hw5
  have hL5 := la_set (s := { st5 with locals := _ }) hL4 (nm "in_start") (wv [a0, a1, a2, a3])
  refine hq_pop hfs ha0 (kcall_congr hk5 rfl rfl rfl rfl) fun v6 st6 hk6 hv6 _ _ _ => ?_
  obtain ⟨w6, hw6, rfl⟩ := hv6
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hw6
  have hL6 := la_set (s := { st6 with locals := _ }) hL5 (nm "in_size") (wv [b0, b1, b2, b3])
  refine hq_pop hfs ha0 (kcall_congr hk6 rfl rfl rfl rfl) fun v7 st7 hk7 hv7 _ _ _ => ?_
  obtain ⟨w7, hw7, rfl⟩ := hv7
  obtain ⟨o0, o1, o2, o3, rfl⟩ := Struct.wv4 hw7
  have hL7 := la_set (s := { st7 with locals := _ }) hL6 (nm "out_start") (wv [o0, o1, o2, o3])
  refine hq_pop hfs ha0 (kcall_congr hk7 rfl rfl rfl rfl)
    fun v8 st8 hk8 hv8 hsp8 _ _ => ?_
  obtain ⟨w8, hw8, rfl⟩ := hv8
  obtain ⟨z0, z1, z2, z3, rfl⟩ := Struct.wv4 hw8
  have hL8 := la_set (s := { st8 with locals := _ }) hL7 (nm "out_size") (wv [z0, z1, z2, z3])
  exact cc_k0 hP hCH hfs hPh ha0 (kcall_congr hk8 rfl rfl rfl rfl) hL8 rfl rfl rfl rfl rfl rfl
    rfl hsp8


end proof

/-- **`op_callcode`'s bounded step spec**, from `PreHyps` and the open callee facts `CallHyps`. -/
theorem j_op_callcode_of (hP : PreHyps σ) (hCH : CallHyps σ) :
    OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_callcode") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_callcode) :=
    declPair_valid (List.getElem_mem (n := 604) (by decide)) ⟨_, rfl⟩
  refine opStepB_qcall hcode ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP0 hk0
  haveI : Fact (ChainOf s0 fs) := by
    obtain ⟨⟨_, _, _, _, hchc, _⟩, _⟩ := id hk0
    exact ⟨hchc.chain⟩
  have ha0 : act s0 = 1 := by unfold act; rw [if_pos hrdy]
  rw [ccBody_eq]
  exact cc_body hP hCH hfs hP0 ha0 (kcall_of_gk hk0)

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.cc_body
#print axioms InitECandidate.Solver.MemSafe.Calls.j_op_callcode_of
