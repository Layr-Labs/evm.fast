import InitECandidate.Solver.MemSafe.Ops7.Create2A
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_create2` (sonnet-create)

**`j_op_create2 : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_create2")`**: the static
check, four pops, `cr_cost` (cost prefix, `charge_gas`), `cr2_salt` (the `alloc(32)` salt block in
a heap window and `u256_to_be32` into it), then `cr2_em` and the rest of `Create2A`. No
hypothesis beyond the proved `PreHyps`.
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

/-- `u256_to_be32`'s `tab26` signature. -/
def u2bSg : Sig := ⟨[.any, .buf 32], [], [], false⟩

theorem u2b_mem : (nm "u256_to_be32", u2bSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by
  decide +kernel
theorem u2b_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "u256_to_be32") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)

section create2
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

/-- A heap window keeps the running frame's `SP`, `MEM_LEN` and `CAP`. -/
theorem winI_keep (hfs : fs = (e, c) :: rest) {d : Nat} {um : State σ} {m : BitVec 64} {Γc : Gam}
    {pc : Ptrs} {u : State σ}
    (h : WinI (Hooks.guestHooksR (σ := σ)) Γ0 s0 p0 fs d um m Γc pc u) :
    fld u.memory e 16 = fld um.memory e 16 ∧ fld u.memory e 32 = fld um.memory e 32 ∧
      fld u.memory e 232 = fld um.memory e 232 := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨-, Γ1, pm, hrun1, hch, hE, hm, hrun, hPK, hfp, hnf⟩ := h
  have hG1 := hrun1.2.2.2.2.2.1
  have hSt : (fun _ : Nat => false) tEV = false ∧ (fun _ : Nat => false) tCK = false := ⟨rfl, rfl⟩
  have hPK' : ProtKeep guestC (nst (fun _ : Nat => false) Γ1) um u := protKeep_nst_of hPK
  obtain ⟨pq, -, -, hL, -⟩ := id hG1
  have hfk := framesKept_of_protKeepS hF hSt hL hch hPK'
  have hf : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  exact ⟨fk_ev hfk hf (k := 16) (by simp), fk_ev hfk hf (k := 32) (by simp),
    fk_ev hfk hf (k := 232) (by simp)⟩

theorem cr2_salt (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {d : Nat} {u0 : State σ} (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)}
    (hxs : LocsAre u0.locals xs) {a0 a1 a2 a3 nn X1 X2 : BitVec 64} {en sv : ValueHOL 64}
    (lst : xs.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]))
    (len : xs.lookup (nm "endowment") = some en)
    (ln : xs.lookup (nm "n") = some (.val (.word nn)))
    (lx : xs.lookup (nm "x") = some (wv [X1, X2]))
    (lsv : xs.lookup (nm "saltv") = some sv)
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) (hd : 3 ≤ d)
    (h32 : X2.toNat % 32 = 0) (hb : (fld u0.memory e 32).toNat + X2.toNat ≤ 2 ^ 40) :
    HoareG σ guestCtx (fun t => t = u0) cr2Salt QC := by
  have hQ : PostOK Γ0 s0 p0 fs QC := postOK_qc ha0
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  unfold cr2Salt
  obtain ⟨m, Γw, pm, hW⟩ := win_start (kcall_gk hu)
  refine hq_winAlloc hfs hQ hW (N := BitVec.ofNat 64 32) (ev_cw _ 32) ?_
  intro st q pc' hm hmono hW' hq8 hbnd hT
  have hN : (BitVec.ofNat 64 32).toNat = 32 := by decide
  rw [hN] at hT
  have hxs1 := la_set (s := { st with locals := u0.locals }) hxs (nm "salt") (.val (.word q))
  refine hq_winCall hfs hQ (sg := u2bSg) rfl rfl u2b_mem u2b_fp hW' ?_ ?_
  · intro vs hvs
    obtain ⟨x1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨x2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    have := evs_zero hr2
    subst this
    have hq2 : x2 = .val (.word q) := by
      have := la_ev hxs1 (x := nm "salt") (v := .val (.word q)) rfl
      rw [this] at h2
      exact (Option.some.inj h2).symm
    subst hq2
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | i
    · simp only [u2bSg, List.getElem?_cons_zero, Option.some.injEq] at hpt; subst hpt; trivial
    · simp only [u2bSg, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨q, rfl, tmpBuf_bufOK hT⟩
    · simp [u2bSg] at hpt
  · rintro t hl ⟨Γ2, p2, hW2, -⟩
    have hK := kcall_of_gk (gk_of_win hF hfs hW2)
    obtain ⟨k16, k32, k232⟩ := winI_keep hfs hW2
    have hmem : st.memory = u0.memory := hm
    have hxsT : LocsAre t.locals ((nm "salt", .val (.word q)) :: xs) := la_cong hxs1 hl
    refine cr2_em hP hfs ha0 hK hxsT (a0 := a0) (a1 := a1) (a2 := a2) (a3 := a3) (nn := nn)
      (X1 := X1) (X2 := X2) (en := en) (by lkq) (by lkq) (by lkq) (by lkq) ?_ hd h32 ?_
    · show (fld t.memory e 16).toNat < (fld t.memory e 232).toNat
      rw [k16, k232]; exact hsp
    · rw [k32]; exact hb

theorem cr2_main (hP : PreHyps σ) (hfs : fs = (e, c) :: rest)
    (ha0 : act s0 = 1) (hk0 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs 0 s0)
    (hPhi : Phi s0 < 2 ^ 64) :
    HoareG σ guestCtx (fun t => t = s0) cr2Body QC := by
  unfold cr2Body
  have hQ : PostOK Γ0 s0 p0 fs QC := postOK_qc ha0
  refine hq_tabC hfs hQ.toC (E := lgE2) (by simp [lgE2]) lg_rns_mem lg_rns_fp lg_rns_ok
    (kcall_of_gk hk0) (args := []) ?_ ?_
  · intro vs hvs Γ1 p1 _ _ _ _
    exact argsOK_any (by simp [lgRnsSg]) (by rw [evs_len hvs]; rfl)
  intro st1 hk1 hkE hk112
  refine hq_pop hfs ha0 (kcall_congr hk1 (t := { st1 with locals := s0.locals }) rfl rfl rfl rfl) ?_
  intro v1 st2 hK2 ⟨ws1, hl1, hv1⟩ hsp2 h232 h32
  subst hv1
  have hxs1 := la_set (s := { st2 with locals := s0.locals }) (la_nil s0.locals) (nm "endowment") (wv ws1)
  refine hq_pop hfs ha0 (kcall_congr hK2 rfl rfl rfl rfl) ?_
  intro v2 st3 hK3 ⟨ws2, hl2, hv2⟩ hsp3 h232' h32'
  subst hv2
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hl2
  have hxs2 := la_set (s := { st3 with locals := (setVarHOLFinite (nm "endowment") (wv ws1)
    { st2 with locals := s0.locals }).locals }) hxs1 (nm "mstart") (wv [a0, a1, a2, a3])
  refine hq_pop hfs ha0 (kcall_congr hK3 rfl rfl rfl rfl) ?_
  intro v3 st4 hK4 ⟨ws3, hl3, hv3⟩ hsp4 h232'' h32''
  subst hv3
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hl3
  have hxs3 := la_set (s := { st4 with locals := (setVarHOLFinite (nm "mstart") (wv [a0, a1, a2, a3])
    { st3 with locals := (setVarHOLFinite (nm "endowment") (wv ws1)
      { st2 with locals := s0.locals }).locals }).locals }) hxs2 (nm "msize") (wv [b0, b1, b2, b3])
  refine hq_pop hfs ha0 (kcall_congr hK4 rfl rfl rfl rfl) ?_
  intro v4 st5 hK5 ⟨ws4, hl4, hv4⟩ hsp5 h232''' h32'''
  subst hv4
  have hxs4 := la_set (s := { st5 with locals := (setVarHOLFinite (nm "msize") (wv [b0, b1, b2, b3])
    { st4 with locals := (setVarHOLFinite (nm "mstart") (wv [a0, a1, a2, a3])
    { st3 with locals := (setVarHOLFinite (nm "endowment") (wv ws1)
      { st2 with locals := s0.locals }).locals }).locals }).locals }) hxs3 (nm "saltv") (wv ws4)
  refine cr_cost hfs hPhi ha0 (ce := cr2Cost0) (c0f := fun W => BitVec.ofNat 64 12000 +
      (BitVec.ofNat 64 6 * W + BitVec.ofNat 64 2 * W)) ?_ (fun W hW => ?_)
    (kcall_congr hK5 rfl rfl rfl rfl) hxs4
    (a0 := a0) (a1 := a1) (a2 := a2) (a3 := a3) (b0 := b0) (b1 := b1) (b2 := b2) (b3 := b3)
    (by lkq) (by lkq) hsp5 ?_
  · intro t W hW
    exact ev_add3 (ev_cw _ 12000) (ev_mul2 (ev_cw _ 6) (by rw [ev_lv]; exact hW))
      (ev_mul2 (ev_cw _ 2) (by rw [ev_lv]; exact hW))
  · rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_mul, BitVec.toNat_ofNat,
      BitVec.toNat_ofNat, BitVec.toNat_ofNat]
    have h1 : 12000 % 2 ^ 64 = 12000 := by norm_num
    have h2 : 2 % 2 ^ 64 = 2 := by norm_num
    have h6 : 6 % 2 ^ 64 = 6 := by norm_num
    rw [h1, h2, h6, Nat.mod_eq_of_lt (a := 2 * W.toNat) (by omega),
      Nat.mod_eq_of_lt (a := 6 * W.toNat) (by omega),
      Nat.mod_eq_of_lt (a := 6 * W.toNat + 2 * W.toNat) (by omega), Nat.mod_eq_of_lt (by omega)]
    omega
  · intro st X1 X2 W cv hKst hxs hcv hsp h32 hb
    exact cr2_salt hP hfs ha0 hKst hxs (nn := Struct.satWordF b0 b1 b2 b3) (en := wv ws1)
      (sv := wv ws4) (by lkq) (by lkq) (by lkq) (by lkq) (by lkq) hsp (by omega) h32 hb

end create2

/-- **`op_create2`'s bounded step spec.** -/
theorem j_op_create2 : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_create2") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_create2) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 600) (by decide)) ⟨_, rfl⟩
  refine opStepB_qcall hcode ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  haveI : Fact (ChainOf s0 fs) := by
    obtain ⟨⟨_, _, _, _, hchc, _⟩, _⟩ := id hk0
    exact ⟨hchc.chain⟩
  rw [cr2Body_eq]
  exact cr2_main preHyps_proved hfs (by unfold act; rw [if_pos hrdy]) hk0 hP

end InitECandidate.Solver.MemSafe.Ops7

#print axioms InitECandidate.Solver.MemSafe.Ops7.winI_keep
#print axioms InitECandidate.Solver.MemSafe.Ops7.cr2_salt
#print axioms InitECandidate.Solver.MemSafe.Ops7.cr2_main
#print axioms InitECandidate.Solver.MemSafe.Ops7.j_op_create2
