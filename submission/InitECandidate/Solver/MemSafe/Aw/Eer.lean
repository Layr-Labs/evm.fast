import InitECandidate.Solver.MemSafe.Aw.Chain

set_option autoImplicit false

/-!
# `encode_execution_requests` as an above-writer (target D)
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

def rqN : MlS := nm "rq"
def arrN : MlS := nm "arr"
def szN : MlS := nm "sz"
def blobN : MlS := nm "blob"

def eerThen : ProgHOL 64 :=
  .decCall blobN .one (nm "alloc") [.op .add [.panop .mul [lv cntN, lv szN], cw 8]]
    (.seq (.storeByte (lv blobN) (lv iN))
      (.seq (callD (nm "memcpy") [.op .add [lv blobN, cw 1], lv pN, .panop .mul [lv cntN, lv szN]])
        (.seq (.store (.op .add [lv arrN, .panop .mul [lv nN, cw 16]]) (lv blobN))
          (.seq (.store (.op .add [lv arrN, .panop .mul [lv nN, cw 16], cw 8])
              (.op .add [.panop .mul [lv cntN, lv szN], cw 1]))
            (.assign .local nN (.op .add [lv nN, cw 1]))))))

def eerSz (k c : Nat) : ProgHOL 64 := .ite (.cmp .equal (lv iN) (cw k)) (.assign .local szN (cw c)) .skip

def eerLoop : ProgHOL 64 :=
  .dec pN .one (.load .one (.op .add [lv rqN, cw 0, .panop .mul [lv iN, cw 16]]))
    (.dec cntN .one (.load .one (.op .add [lv rqN, cw 8, .panop .mul [lv iN, cw 16]]))
      (.dec szN .one (cw 192)
        (.seq (eerSz 1 76)
          (.seq (eerSz 2 116)
            (.seq (eerSz 3 184)
              (.seq (eerSz 4 68)
                (.seq (.ite (.cmp .notEqual (lv cntN) (cw 0)) eerThen .skip)
                  (.assign .local iN (.op .add [lv iN, cw 1])))))))))

def eerBody : ProgHOL 64 :=
  .decCall arrN .one (nm "alloc") [.panop .mul [cw 5, cw 16]]
    (.dec nN .one (cw 0)
      (.dec iN .one (cw 0)
        (.seq (.while (.cmp .less (lv iN) (cw 5)) eerLoop)
          (.return (.rstruct [lv arrN, lv nN])))))

theorem code_encode_execution_requests : guestCode (nm "encode_execution_requests") =
    some ([(rqN, .one)], eerBody, .comb [.one, .one]) := by
  have h : fnEntry Guest.Software.guestFn_encode_execution_requests =
      (nm "encode_execution_requests", [(rqN, .one)], eerBody, .comb [.one, .one]) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 839) (by decide)) ⟨_, rfl⟩ h

/-! ## Invariants -/

def Er (P : Nat → Nat → Prop) (m : Locals) : Prop :=
  ∃ I N : BitVec 64, m.lookup iN = some (.val (.word I)) ∧ m.lookup nN = some (.val (.word N)) ∧
    P I.toNat N.toNat

theorem er_upd {P : Nat → Nat → Prop} {m : Locals} {x : MlS} {v : ValueHOL 64} (h1 : x ≠ iN)
    (h2 : x ≠ nN) (h : Er P m) : Er P (m.update (x, v)) := by
  obtain ⟨I, N, hI, hN, hP⟩ := h
  exact ⟨I, N, by rw [lookup_update_ne _ _ h1]; exact hI, by rw [lookup_update_ne _ _ h2]; exact hN,
    hP⟩

theorem er_res {P : Nat → Nat → Prop} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ≠ iN) (h2 : x ≠ nN) (h : Er P m) : Er P (m.resVarEq (x, o)) := by
  obtain ⟨I, N, hI, hN, hP⟩ := h
  exact ⟨I, N, by rw [lookup_resVarEq_ne _ _ h1]; exact hI,
    by rw [lookup_resVarEq_ne _ _ h2]; exact hN, hP⟩

theorem er_mono {P Q : Nat → Nat → Prop} {m : Locals} (hPQ : ∀ i n, P i n → Q i n)
    (h : Er P m) : Er Q m := by
  obtain ⟨I, N, hI, hN, hP⟩ := h
  exact ⟨I, N, hI, hN, hPQ _ _ hP⟩

def EE (h0 : Nat) (P : Nat → Nat → Prop) (m : Locals) : Prop :=
  Bd m arrN h0 heapEnd ∧ Er P m

theorem ee_upd {h0 : Nat} {P : Nat → Nat → Prop} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h1 : x ≠ arrN) (h2 : x ≠ iN) (h3 : x ≠ nN) (h : EE h0 P m) : EE h0 P (m.update (x, v)) :=
  ⟨bd_upd h1 h.1, er_upd h2 h3 h.2⟩

theorem ee_res {h0 : Nat} {P : Nat → Nat → Prop} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ≠ arrN) (h2 : x ≠ iN) (h3 : x ≠ nN) (h : EE h0 P m) :
    EE h0 P (m.resVarEq (x, o)) := ⟨bd_res h1 h.1, er_res h2 h3 h.2⟩

theorem ee_mono {h0 : Nat} {P Q : Nat → Nat → Prop} {m : Locals} (hPQ : ∀ i n, P i n → Q i n)
    (h : EE h0 P m) : EE h0 Q m := ⟨h.1, er_mono hPQ h.2⟩

def PA (I N : Nat) : Prop := N ≤ I ∧ I ≤ 5
def PB (I N : Nat) : Prop := N ≤ I ∧ I < 5
def PC (I N : Nat) : Prop := N ≤ I + 1 ∧ I < 5

def Ek (h0 : Nat) (P : Nat → Nat → Prop) (m : Locals) : Prop :=
  EE h0 P m ∧ Bd m pN 0 WW ∧ Bd m cntN 0 WW ∧ Bd m szN 0 WW

theorem ek_upd {h0 : Nat} {P : Nat → Nat → Prop} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h1 : x ≠ arrN) (h2 : x ≠ iN) (h3 : x ≠ nN) (h4 : x ≠ pN) (h5 : x ≠ cntN) (h6 : x ≠ szN)
    (h : Ek h0 P m) : Ek h0 P (m.update (x, v)) :=
  ⟨ee_upd h1 h2 h3 h.1, bd_upd h4 h.2.1, bd_upd h5 h.2.2.1, bd_upd h6 h.2.2.2⟩

theorem ek_mono {h0 : Nat} {P Q : Nat → Nat → Prop} {m : Locals} (hPQ : ∀ i n, P i n → Q i n)
    (h : Ek h0 P m) : Ek h0 Q m := ⟨ee_mono hPQ h.1, h.2⟩

theorem ek_sz {h0 : Nat} {P : Nat → Nat → Prop} {m : Locals} {W : BitVec 64} (h : Ek h0 P m) :
    Ek h0 P (m.update (szN, .val (.word W))) :=
  ⟨ee_upd (by decide) (by decide) (by decide) h.1, bd_upd (by decide) h.2.1,
    bd_upd (by decide) h.2.2.1, bd_wd _ _ _⟩

theorem ek_res_of {h0 : Nat} {P : Nat → Nat → Prop} {m : Locals} {x : MlS}
    {o : Option (ValueHOL 64)} (h1 : x ≠ arrN) (h2 : x ≠ iN) (h3 : x ≠ nN) (h : EE h0 P m) :
    EE h0 P (m.resVarEq (x, o)) := ee_res h1 h2 h3 h

/-- The loop condition `i < 5` with `i ≤ 5`. -/
theorem lt5_of_cond {t : State σ} {I : BitVec 64}
    (hI : t.locals.lookup iN = some (.val (.word I))) (h5 : I.toNat ≤ 5)
    (hc : CondTrue t (.cmp .less (lv iN) (cw 5))) : I.toNat < 5 := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hI] at hx
  cases hx
  rw [ev_cw] at hy
  cases hy
  have := less_small (by omega) (by simp) hxy
  simp at this
  exact this

/-- The result: `<arr, n>` with at most 5 requests (`compute_requests_hash` asks `n < 2^20`). -/
def EerRet (v : ValueHOL 64) : Prop :=
  ∃ A N : BitVec 64, v = .rStruct [.val (.word A), .val (.word N)] ∧ N.toNat ≤ 5

theorem awSpec_encode_execution_requests {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) :
    AWSpec σ X C H (nm "encode_execution_requests") [] (fun _ _ _ => True)
      (fun _ _ v _ => EerRet v) := by
  refine awSpec_of_hoareG (PV := fun _ v => EerRet v) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA', hla⟩ := lookupCode_one code_encode_execution_requests hl
  obtain ⟨Rq, rfl⟩ := val_of_shapeEq_one hA'
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  refine hoareG_conseq (P := APre a (fun _ => True)) (Q := AQ a (fun _ => True) EerRet) ?_
    (fun t _ ht => by subst ht; exact ⟨awInv_init a hG hp hB, trivial⟩) (fun _ _ _ _ h => h)
  unfold eerBody
  -- arr = alloc(5 * 16)
  refine hoareG_decCallAs' hK (asp_alloc hK hC) (Lk := fun m => Bd m arrN h0 heapEnd)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_mul2 (ev_cw _ 5) (ev_cw _ 16)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact bd_new _ _ _ hq1 (by omega)
  intro s
  -- n = 0; i = 0
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s2 hs2 hL2 v2 hv2 hsh2
  rw [ev_cw] at hv2
  cases hv2
  refine hoareG_preA (L' := fun m => Bd m arrN h0 heapEnd ∧
    m.lookup nN = some (.val (.word (BitVec.ofNat 64 0)))) ?_ (fun m hm => by
    subst hm
    exact ⟨bd_upd (by decide) hL2, lookup_update_self _ _ _⟩)
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s3 hs3 hL3 v3 hv3 hsh3
  rw [ev_cw] at hv3
  cases hv3
  refine hoareG_preA (L' := EE h0 PA) ?_ (fun m hm => by
    subst hm
    exact ⟨bd_upd (by decide) hL3.1, BitVec.ofNat 64 0, BitVec.ofNat 64 0,
      lookup_update_self _ _ _, by rw [lookup_update_ne _ _ (by decide)]; exact hL3.2,
      by simp [PA]⟩)
  refine hoareG_seqA (L2 := EE h0 PA) ?_ ?_
  · refine hoareG_whileA hK (J := EE h0 PA) ?_ (fun s _ h _ => h)
    refine hoareG_pre (P := APre a (EE h0 PB)) ?_ (fun s hs ⟨hP, hc⟩ => ⟨hP.1, hP.2.1, by
      obtain ⟨I, N, hI, hN, hP2⟩ := hP.2.2
      exact ⟨I, N, hI, hN, hP2.1, lt5_of_cond hI hP2.2 hc⟩⟩)
    unfold eerLoop
    have hres : ∀ (m m' : Locals), True → EE h0 PA m' → ∀ x : MlS, x ≠ arrN → x ≠ iN → x ≠ nN →
        EE h0 PA (m'.resVarEq (x, m.lookup x)) := fun m m' _ h x h1 h2 h3 => ee_res h1 h2 h3 h
    -- p
    refine hoareG_decA hK (L' := fun _ m' => EE h0 PA m') ?_
      (fun m m' _ h => ee_res (by decide) (by decide) (by decide) h)
    intro s4 hs4 hL4 v4 hv4 hsh4
    obtain ⟨X1, rfl⟩ := val_of_shapeEq_one hsh4
    refine hoareG_preA (L' := fun m => EE h0 PB m ∧ Bd m pN 0 WW) ?_ (fun m hm => by
      subst hm
      exact ⟨ee_upd (by decide) (by decide) (by decide) hL4, bd_wd _ _ _⟩)
    -- cnt
    refine hoareG_decA hK (L' := fun _ m' => EE h0 PA m') ?_
      (fun m m' _ h => ee_res (by decide) (by decide) (by decide) h)
    intro s5 hs5 hL5 v5 hv5 hsh5
    obtain ⟨X2, rfl⟩ := val_of_shapeEq_one hsh5
    refine hoareG_preA (L' := fun m => EE h0 PB m ∧ Bd m pN 0 WW ∧ Bd m cntN 0 WW) ?_ (fun m hm => by
      subst hm
      exact ⟨ee_upd (by decide) (by decide) (by decide) hL5.1, bd_upd (by decide) hL5.2,
        bd_wd _ _ _⟩)
    -- sz
    refine hoareG_decA hK (L' := fun _ m' => EE h0 PA m') ?_
      (fun m m' _ h => ee_res (by decide) (by decide) (by decide) h)
    intro s6 hs6 hL6 v6 hv6 hsh6
    rw [ev_cw] at hv6
    cases hv6
    refine hoareG_preA (L' := Ek h0 PB) ?_ (fun m hm => by
      subst hm
      exact ⟨ee_upd (by decide) (by decide) (by decide) hL6.1, bd_upd (by decide) hL6.2.1,
        bd_upd (by decide) hL6.2.2, bd_wd _ _ _⟩)
    have hsz : ∀ k c, HoareG σ X (APre a (Ek h0 PB)) (eerSz k c) (AQ a (Ek h0 PB) EerRet) :=
      fun k c => hoareG_iteA (hoareG_assignA hK fun s _ hL v hv => by rw [ev_cw] at hv; cases hv; exact ek_sz hL)
        (hoareG_skipA fun m h => h)
    refine hoareG_seqA (L2 := Ek h0 PB) (hsz 1 76) ?_
    refine hoareG_seqA (L2 := Ek h0 PB) (hsz 2 116) ?_
    refine hoareG_seqA (L2 := Ek h0 PB) (hsz 3 184) ?_
    refine hoareG_seqA (L2 := Ek h0 PB) (hsz 4 68) ?_
    refine hoareG_seqA (L2 := Ek h0 PC) ?_ ?_
    · refine hoareG_iteA ?_ (hoareG_skipA fun m h => ek_mono (fun i n h => ⟨by have := h.1; omega, h.2⟩) h)
      unfold eerThen
      have hout : ∀ (m m' : Locals), Ek h0 PC m' → Ek h0 PC (m'.resVarEq (blobN, m.lookup blobN)) :=
        fun m m' h => ⟨ee_res (by decide) (by decide) (by decide) h.1, bd_res (by decide) h.2.1,
          bd_res (by decide) h.2.2.1, bd_res (by decide) h.2.2.2⟩
      refine hoareG_decCallAs' hK (asp_alloc hK hC) (Lk := fun m => Ek h0 PB m ∧ Bd m blobN h0 heapEnd)
        (L' := fun _ m' => Ek h0 PC m') ?_ ?_ ?_ (fun m m' _ h => hout m m' h)
      · intro s7 hs7 hP7 vs hvs callee
        obtain ⟨C0, hc, -, -⟩ := hP7.2.2.2.1
        obtain ⟨S0, hsz, -, -⟩ := hP7.2.2.2.2
        rw [evs_cons (ev_add2 (ev_mul2 (ev_lw hc) (ev_lw hsz)) (ev_cw _ 8)) evs_nil] at hvs
        cases hvs
        exact ⟨_, rfl⟩
      · intro s7 vs v st hL hvs hRet hsh
        obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
        exact ⟨ek_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) hL,
          bd_new _ _ _ hq1 (by omega)⟩
      intro s7
      have hn := num_facts2
      have hs62 : domTop < 2 ^ 62 := by decide
      have hEb : ∀ m, (Ek h0 PB m ∧ Bd m blobN h0 heapEnd) → ∀ (N : BitVec 64),
          m.lookup nN = some (.val (.word N)) → N.toNat ≤ 4 := by
        intro m hm N hN
        obtain ⟨I, N', hI, hN', hP⟩ := hm.1.1.2
        rw [hN] at hN'
        cases hN'
        have := hP.1
        have := hP.2
        omega
      refine hoareG_seqA (L2 := fun m => Ek h0 PB m ∧ Bd m blobN h0 heapEnd)
        (hoareG_storeByteA hK ?_) ?_
      · intro s8 hs8 hL8 w hw
        obtain ⟨Bb, hb, h1, h2⟩ := hL8.2
        rw [ev_lw hb] at hw
        cases hw
        exact h1
      refine hoareG_seqA (L2 := fun m => Ek h0 PB m ∧ Bd m blobN h0 heapEnd)
        (hoareG_callAs hK (asp_memcpy hK hC hA hT) ?_ (fun s vs v st hL hvs hRet => hL)) ?_
      · intro s8 hs8 hP8 vs hvs callee
        obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
        obtain ⟨Bb, hb, h1, h2⟩ := hP8.2.2
        obtain ⟨C0, hc, -, -⟩ := hP8.2.1.2.2.1
        obtain ⟨S0, hsz, -, -⟩ := hP8.2.1.2.2.2
        rw [ev_add2 (ev_lw hb) (ev_cw _ 1)] at e1
        cases e1
        rw [ev_mul2 (ev_lw hc) (ev_lw hsz)] at e3
        cases e3
        have hadd : (Bb + BitVec.ofNat 64 1).toNat = Bb.toNat + 1 := toNat_addc (by omega)
        exact ⟨Bb + BitVec.ofNat 64 1, C0 * S0, rfl, rfl, by omega, by omega⟩
      refine hoareG_seqA (L2 := fun m => Ek h0 PB m ∧ Bd m blobN h0 heapEnd)
        (hoareG_storeA hK ?_ ?_) ?_
      · intro s8 hs8 hL8 w hw
        obtain ⟨Arr, ha, h1, h2⟩ := hL8.1.1.1
        obtain ⟨I, N, hI, hN, hP⟩ := hL8.1.1.2
        rw [ev_add2 (ev_lw ha) (ev_mul2 (ev_lw hN) (ev_cw _ 16))] at hw
        cases hw
        have hN4 := hEb _ hL8 N hN
        have hm : (N * BitVec.ofNat 64 16).toNat = N.toNat * 16 :=
          toNat_mulc (by omega) (by omega)
        rw [toNat_add2 (by omega)]
        omega
      · intro s8 hs8 hL8 v hv
        obtain ⟨Bb, hb, h1, h2⟩ := hL8.2
        rw [ev_lw hb] at hv
        cases hv
        exact ⟨_, by rw [flattenHOL]⟩
      refine hoareG_seqA (L2 := fun m => Ek h0 PB m ∧ Bd m blobN h0 heapEnd)
        (hoareG_storeA hK ?_ ?_) ?_
      · intro s8 hs8 hL8 w hw
        obtain ⟨Arr, ha, h1, h2⟩ := hL8.1.1.1
        obtain ⟨I, N, hI, hN, hP⟩ := hL8.1.1.2
        rw [ev_add3 (ev_lw ha) (ev_mul2 (ev_lw hN) (ev_cw _ 16)) (ev_cw _ 8)] at hw
        cases hw
        have hN4 := hEb _ hL8 N hN
        have hm : (N * BitVec.ofNat 64 16).toNat = N.toNat * 16 :=
          toNat_mulc (by omega) (by omega)
        have h8 : (N * BitVec.ofNat 64 16 + BitVec.ofNat 64 8).toNat = N.toNat * 16 + 8 := by
          rw [toNat_addc (by rw [hm]; omega), hm]
        rw [toNat_add2 (by omega), h8]
        omega
      · intro s8 hs8 hL8 v hv
        obtain ⟨C0, hc, -, -⟩ := hL8.1.2.2.1
        obtain ⟨S0, hsz, -, -⟩ := hL8.1.2.2.2
        rw [ev_add2 (ev_mul2 (ev_lw hc) (ev_lw hsz)) (ev_cw _ 1)] at hv
        cases hv
        exact ⟨_, by rw [flattenHOL]⟩
      · refine hoareG_assignA hK fun s8 _ hL8 v hv => ?_
        obtain ⟨I, N, hI, hN, hP⟩ := hL8.1.1.2
        rw [ev_add2 (ev_lw hN) (ev_cw _ 1)] at hv
        cases hv
        have hN4 := hEb _ hL8 N hN
        have hN1 : (N + BitVec.ofNat 64 1).toNat = N.toNat + 1 := toNat_addc (by omega)
        refine ⟨⟨bd_upd (by decide) hL8.1.1.1, I, N + BitVec.ofNat 64 1,
          by rw [lookup_update_ne _ _ (by decide)]; exact hI, lookup_update_self _ _ _, ?_⟩,
          bd_upd (by decide) hL8.1.2.1, bd_upd (by decide) hL8.1.2.2.1,
          bd_upd (by decide) hL8.1.2.2.2⟩
        show (N + BitVec.ofNat 64 1).toNat ≤ I.toNat + 1 ∧ I.toNat < 5
        rw [hN1]
        have := hP.1
        have := hP.2
        constructor <;> omega
    · refine hoareG_assignA hK fun s _ hL v hv => ?_
      obtain ⟨I, N, hI, hN, hP⟩ := hL.1.2
      rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv
      cases hv
      have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_addc (by have := hP.2; omega)
      refine ⟨bd_upd (by decide) hL.1.1, I + BitVec.ofNat 64 1, N, lookup_update_self _ _ _,
        by rw [lookup_update_ne _ _ (by decide)]; exact hN, ?_⟩
      show N.toNat ≤ (I + BitVec.ofNat 64 1).toNat ∧ (I + BitVec.ofNat 64 1).toNat ≤ 5
      rw [hI1]
      have := hP.1
      have := hP.2
      constructor <;> omega
  · refine hoareG_returnA hK (fun s _ hL v hv => ?_)
    obtain ⟨⟨Arr, ha, -, -⟩, I, N, -, hN, hP⟩ := hL
    rw [ev_rstruct (evs_cons (ev_lw ha) (evs_cons (ev_lw hN) evs_nil))] at hv
    cases hv
    have := hP.1
    have := hP.2
    exact ⟨Arr, N, rfl, by omega⟩

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_encode_execution_requests
