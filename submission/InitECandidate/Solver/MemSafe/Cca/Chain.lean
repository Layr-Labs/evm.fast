import InitECandidate.Solver.MemSafe.Cca.Args

set_option autoImplicit false

/-!
# `compute_contract_address`: the Hoare chain (Cca)
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

macro "ccaside" : tactic => `(tactic| (simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq]; decide))

namespace InitECandidate.Solver.MemSafe.Cca
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64}

theorem lvs_swap2 {a b : String × BitVec 64} {l : List (String × BitVec 64)} {m : LocalsH}
    (h : LVs (a :: b :: l) m) : LVs (b :: a :: l) m :=
  h.mono (fun p hp => by simp only [List.mem_cons] at hp ⊢; tauto)

theorem ev_buf9 {s : State σ} {l : List (String × BitVec 64)} (hL : LVs l s.locals) {Q : BitVec 64}
    (hm : ("buf", Q) ∈ l) : ev s bp9 = some (V (W (Q.toNat + 9))) :=
  ev_addW (by rw [W_toNat]; exact hL.getE hm) (ev_cw s 9)

/-- The locals after `var buf = alloc(64)`. -/
abbrev LB (A Nn O M Q : BitVec 64) : List (String × BitVec 64) :=
  ("buf", Q) :: ("mark", M) :: [("addr", A), ("nonce", Nn), ("out", O)]

theorem hse : heapEnd ≤ scratchEnd := by decide


theorem lget {s : State σ} {l : List (String × BitVec 64)} (hL : LVs l s.locals) (x : String)
    (w : BitVec 64) (hm : (x, w) ∈ l) : ev s (lv (nm x)) = some (V w) := hL.getE hm

theorem cca_chain {a : Act σ} (ce : CI σ X a) (A Nn O : BitVec 64) (hO : OutF a O)
    (hloc : LVs [("addr", A), ("nonce", Nn), ("out", O)] a.s0.locals)
    (hh : Heap a a.Γ0 a.p0 a.s0) :
    HoareG σ X (fun t => t = a.s0) ccaBody (HQa a) := by
  have hlt := heapEnd_lt
  have hse' := hse
  unfold ccaBody
  refine hoareG_markE ce.ha hh ce.hMk (L := LVs [("addr", A), ("nonce", Nn), ("out", O)])
    (L' := fun M m => LVs (("mark", M) :: [("addr", A), ("nonce", Nn), ("out", O)]) m) hloc
    (fun s st M hL => LVs.dec hL "mark" M (by ccaside)) ?_
  intro M hM
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc 64 (by norm_num) (by norm_num)
    (L' := fun Q m => LVs (LB A Nn O M Q) m) (fun s _ => ev_cw s 64)
    (fun s st Q hL => LVs.dec hL "buf" Q (by ccaside)) ?_
  intro Q hQ8 hKQ
  -- var p = buf + 9
  refine hoareG_decK ce.ha.hH (K := Q.toNat + 64) (MK := M) (L := LVs (LB A Nn O M Q))
    (L' := LVs (("p", W (Q.toNat + 9)) :: LB A Nn O M Q)) ?_ ?_
  · intro s hs hL v hv
    rw [ev_buf9 hL (Q := Q) (by simp)] at hv
    cases hv
    exact LVs.dec (st := s) hL "p" _ (by ccaside)
  -- var w = rlp_encode_bytes(p, addr, 20)
  refine hoareG_decCallK' ce.ha ce.rb ce.rbF (by simp [Helpers.sigRlpEncodeBytes]) rfl
    (K := Q.toNat + 64) (MK := M) (L := LVs (("p", W (Q.toNat + 9)) :: LB A Nn O M Q))
    (L' := fun w m => LVs (("w", w) :: ("p", W (Q.toNat + 9)) :: LB A Nn O M Q) m)
    (Fct := fun w => ∃ k, w = W k ∧ k ≤ 29) ?_ ?_
    (fun s st w hL => LVs.dec hL "w" w (by ccaside)) ?_
  · intro s hs hL Γ p he hh' hK vs hvs
    rw [evs_cons (lget hL "p" (W (Q.toNat + 9)) (by simp)) (evs_cons (lget hL "addr" A (by simp))
      (evs_cons (ev_cw s 20) evs_nil))] at hvs
    cases hvs
    have hKe := heapEnd_of_heap hh' hK
    obtain ⟨h1, h2⟩ := blk_sub ce.hgrow ce.ha.hord0 ce.hL0 hh' (q := Q.toNat) (n := 64)
      (b := (W (Q.toNat + 9)).toNat) (m := 1 * (W 20).toNat + 9) hQ8 hKQ hK
      (by rw [toNat_W (by omega)]; omega) (by rw [toNat_W (by omega), toNat_W20]; omega) a.Cb
    exact ⟨argsOK_rb h1, fun x hx => h2 x (argCells_rb hx), fun _ => trivial⟩
  · intro s hL hKe vs hvs callee v st hR' hsh
    rw [evs_cons (lget hL "p" (W (Q.toNat + 9)) (by simp)) (evs_cons (lget hL "addr" A (by simp))
      (evs_cons (ev_cw s 20) evs_nil))] at hvs
    cases hvs
    have hpre : Rec.WbPre [V (W (Q.toNat + 9)), V A, V (W 20)] (callEntryStateHOLFinite s callee) :=
      ⟨_, _, _, rfl, by rw [toNat_W (by omega), toNat_W20]; omega⟩
    obtain ⟨-, -, hrv⟩ := hR' (by simp [Good]) hpre
    obtain ⟨k, rfl, hk⟩ := hrv v rfl
    refine ⟨W k, rfl, k, rfl, ?_⟩
    simpa [Rec.WbF, argW, wordOf, V] using hk
  intro w ⟨k, hw, hk29⟩
  subst hw
  -- p = p + w
  refine hoareG_seqK (K := Q.toNat + 64) (MK := M)
    (L := LVs (("p", W (Q.toNat + 9 + k)) :: ("w", W k) :: LB A Nn O M Q))
    (Mod.hoareG_assignK ce.ha.hH ?_) ?_
  · intro s hs hL v hv
    rw [ev_addW (lget hL "p" (W (Q.toNat + 9)) (by simp)) (lget hL "w" (W k) (by simp))] at hv
    cases hv
    exact LVs.set (lvs_swap2 hL) (by ccaside) _ rfl
  -- w = rlp_encode_word(p, nonce)
  refine hoareG_seqK (K := Q.toNat + 64) (MK := M)
    (L := fun m => ∃ k2, LVs (("w", W k2) :: ("p", W (Q.toNat + 9 + k)) :: LB A Nn O M Q) m ∧ k2 ≤ 9)
    (hoareG_callAK' ce.ha ce.rw_ ce.rwF (by simp [Helpers.sigRlpEncodeWord]) rfl ?_ ?_) ?_
  · intro s hs hL Γ p he hh' hK vs hvs
    rw [evs_cons (lget hL "p" (W (Q.toNat + 9 + k)) (by simp)) (evs_cons (lget hL "nonce" Nn (by simp))
      evs_nil)] at hvs
    cases hvs
    have hKe := heapEnd_of_heap hh' hK
    obtain ⟨h1, h2⟩ := blk_sub ce.hgrow ce.ha.hord0 ce.hL0 hh' (q := Q.toNat) (n := 64)
      (b := (W (Q.toNat + 9 + k)).toNat) (m := 9) hQ8 hKQ hK
      (by rw [toNat_W (by omega)]; omega) (by rw [toNat_W (by omega)]; omega) a.Cb
    exact ⟨argsOK_buf9 h1, fun x hx => h2 x (argCells_buf9 hx), fun _ => trivial⟩
  · intro s hL hKe vs hvs callee v st hR' hval
    rw [evs_cons (lget hL "p" (W (Q.toNat + 9 + k)) (by simp)) (evs_cons (lget hL "nonce" Nn (by simp))
      evs_nil)] at hvs
    cases hvs
    have hpre : Rec.WwPre [V (W (Q.toNat + 9 + k)), V Nn] (callEntryStateHOLFinite s callee) :=
      ⟨_, _, rfl, by rw [toNat_W (by omega)]; omega⟩
    obtain ⟨-, -, hrv⟩ := hR' (by simp [Good]) hpre
    obtain ⟨k2, rfl, hk2⟩ := hrv v rfl
    exact ⟨k2, LVs.set (x := "w") (lvs_swap2 hL) (by ccaside) _ rfl, hk2⟩
  refine Fq.hoareG_exL fun k2 => Fq.hoareG_pureL fun hk2 => ?_

  -- p = p + w
  refine hoareG_seqK (K := Q.toNat + 64) (MK := M)
    (L := LVs (("p", W (Q.toNat + 9 + k + k2)) :: ("w", W k2) :: LB A Nn O M Q))
    (Mod.hoareG_assignK ce.ha.hH ?_) ?_
  · intro s hs hL v hv
    rw [ev_addW (lget hL "p" (W (Q.toNat + 9 + k)) (by simp)) (lget hL "w" (W k2) (by simp))] at hv
    cases hv
    exact LVs.set (lvs_swap2 hL) (by ccaside) _ rfl
  -- var payload = p - (buf + 9)
  refine hoareG_decK ce.ha.hH (K := Q.toNat + 64) (MK := M)
    (L := LVs (("p", W (Q.toNat + 9 + k + k2)) :: ("w", W k2) :: LB A Nn O M Q))
    (L' := LVs (("payload", W (k + k2)) :: ("p", W (Q.toNat + 9 + k + k2)) :: ("w", W k2) ::
      LB A Nn O M Q)) ?_ ?_
  · intro s hs hL v hv
    rw [ev_subW (x := Q.toNat + 9 + k + k2) (y := Q.toNat + 9) (by omega)
      (lget hL "p" (W (Q.toNat + 9 + k + k2)) (by simp)) (ev_buf9 hL (Q := Q) (by simp))] at hv
    cases hv
    have e : Q.toNat + 9 + k + k2 - (Q.toNat + 9) = k + k2 := by omega
    rw [e]
    exact LVs.dec (st := s) hL "payload" _ (by ccaside)
  -- var hl = rlp_list_header_len(payload)
  refine hoareG_decCallK' ce.ha ce.lh ce.lhF (by simp [sgLh]) rfl (K := Q.toNat + 64) (MK := M)
    (L := LVs (("payload", W (k + k2)) :: ("p", W (Q.toNat + 9 + k + k2)) :: ("w", W k2) ::
      LB A Nn O M Q))
    (L' := fun w m => LVs (("hl", w) :: ("payload", W (k + k2)) ::
      ("p", W (Q.toNat + 9 + k + k2)) :: ("w", W k2) :: LB A Nn O M Q) m)
    (Fct := fun w => ∃ n, w = W n ∧ n ≤ 9)
    (Fq.hargs_any (by simp [sgLh]) (by simp [sgLh])) ?_
    (fun s st w hL => LVs.dec hL "hl" w (by ccaside)) ?_
  · intro s hL hKe vs hvs callee v st hR' hsh
    rw [evs_cons (lget hL "payload" (W (k + k2)) (by simp)) evs_nil] at hvs
    cases hvs
    obtain ⟨-, -, hrv⟩ := hR' (by simp [Good]) trivial
    have hv := hrv v rfl (W (k + k2)) rfl
    subst hv
    refine ⟨_, rfl, Helpers.hdrLen (W (k + k2)).toNat, rfl, ?_⟩
    exact (Helpers.hdrLen_le (n := (W (k + k2)).toNat) (BitVec.isLt _)).2
  intro w ⟨n, hw, hn9⟩
  subst hw
  -- rlp_encode_list_header(buf + 9 - hl, payload)
  refine hoareG_seqK (K := Q.toNat + 64) (MK := M)
    (L := LVs (("hl", W n) :: ("payload", W (k + k2)) :: ("p", W (Q.toNat + 9 + k + k2)) ::
      ("w", W k2) :: LB A Nn O M Q))
    (hoareG_callK ce.ha ce.hgrow ce.el (by simp [sgEl]) rfl ?_) ?_
  · intro s hs hL Γ p he hh' hK vs hvs
    rw [evs_cons (ev_subW (x := Q.toNat + 9) (y := n) (by omega) (ev_buf9 hL (Q := Q) (by simp))
      (lget hL "hl" (W n) (by simp))) (evs_cons (lget hL "payload" (W (k + k2)) (by simp))
      evs_nil)] at hvs
    cases hvs
    have hKe := heapEnd_of_heap hh' hK
    obtain ⟨h1, h2⟩ := blk_sub ce.hgrow ce.ha.hord0 ce.hL0 hh' (q := Q.toNat) (n := 64)
      (b := (W (Q.toNat + 9 - n)).toNat) (m := 9) hQ8 hKQ hK
      (by rw [toNat_W (by omega)]; omega) (by rw [toNat_W (by omega)]; omega) a.Cb
    exact ⟨argsOK_buf9 h1, fun x hx => h2 x (argCells_buf9 hx), fun _ => trivial⟩
  -- var h = alloc(32)
  refine hoareG_decAllocK ce.ha ce.hAl ce.hAc 32 (by norm_num) (by norm_num)
    (K := Q.toNat + 64) (MK := M)
    (L := LVs (("hl", W n) :: ("payload", W (k + k2)) :: ("p", W (Q.toNat + 9 + k + k2)) ::
      ("w", W k2) :: LB A Nn O M Q))
    (L' := fun H m => LVs (("h", H) :: ("hl", W n) :: ("payload", W (k + k2)) ::
      ("p", W (Q.toNat + 9 + k + k2)) :: ("w", W k2) :: LB A Nn O M Q) m)
    (fun s _ => ev_cw s 32) (fun s st H hL => LVs.dec hL "h" H (by ccaside)) ?_
  intro H hH8 hKH
  -- keccak256(buf + 9 - hl, payload + hl, h); memcpy; heap_release; return
  refine hoareG_seqK (K := H.toNat + 32) (MK := M)
    (L := LVs (("h", H) :: ("hl", W n) :: ("payload", W (k + k2)) ::
      ("p", W (Q.toNat + 9 + k + k2)) :: ("w", W k2) :: LB A Nn O M Q))
    (hoareG_callK ce.ha ce.hgrow ce.kc (by simp [sgKc]) rfl ?_) ?_
  · intro s hs hL Γ p he hh' hK vs hvs
    rw [evs_cons (ev_subW (x := Q.toNat + 9) (y := n) (by omega) (ev_buf9 hL (Q := Q) (by simp))
      (lget hL "hl" (W n) (by simp)))
      (evs_cons (ev_addW (lget hL "payload" (W (k + k2)) (by simp)) (lget hL "hl" (W n) (by simp)))
      (evs_cons (lget hL "h" H (by simp)) evs_nil))] at hvs
    cases hvs
    obtain ⟨h1, h2⟩ := blk_sub ce.hgrow ce.ha.hord0 ce.hL0 hh' (q := H.toNat) (n := 32)
      (b := H.toNat) (m := 32) hH8 (by omega) hK le_rfl le_rfl a.Cb
    exact ⟨argsOK_kc h1, fun x hx => h2 x (argCells_kc hx), fun _ => trivial⟩
  refine hoareG_seqK (K := H.toNat + 32) (MK := M)
    (L := LVs (("h", H) :: ("hl", W n) :: ("payload", W (k + k2)) ::
      ("p", W (Q.toNat + 9 + k + k2)) :: ("w", W k2) :: LB A Nn O M Q))
    (hoareG_callK ce.ha ce.hgrow ce.mc (by simp [Helpers.sigMemcpy]) rfl ?_) ?_
  · intro s hs hL Γ p he hh' hK vs hvs
    rw [evs_cons (lget hL "out" O (by simp))
      (evs_cons (ev_add2 (lget hL "h" H (by simp)) (ev_cw s 12)) (evs_cons (ev_cw s 20) evs_nil))] at hvs
    cases hvs
    have hb := bufOK_later ce.ha hh' he hO.hb
    have e20 : 1 * (BitVec.ofNat 64 20).toNat + 0 = 20 := by simpa using toNat_W20
    refine ⟨argsOK_mc (by rw [e20]; exact hb), fun x hx => hO.hf x ?_, fun _ => trivial⟩
    have := argCells_mc hx
    rw [e20] at this
    exact this
  exact hoareG_conseq
    (hoareG_relRet ce.ha ce.hRel (K := H.toNat + 32) (MK := M)
      (L := LVs (("h", H) :: ("hl", W n) :: ("payload", W (k + k2)) ::
        ("p", W (Q.toNat + 9 + k + k2)) :: ("w", W k2) :: LB A Nn O M Q))
      (fun s hL => lget hL "mark" M (by simp)))
    (fun t _ ht => ht) (fun r t _ _ hq => rq_hqa hq)

end InitECandidate.Solver.MemSafe.Cca

#print axioms InitECandidate.Solver.MemSafe.Cca.cca_chain
