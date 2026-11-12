import InitECandidate.Solver.MemSafe.Aw.Npr

set_option autoImplicit false

/-!
# `htr_payload` (target E)
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

def plN' : MlS := nm "pl"
def rawN : MlS := nm "raw"
def txsN : MlS := nm "txs"
def ntxN : MlS := nm "ntx"
def m2N : MlS := nm "m2"
def pwdN : MlS := nm "wd"
def pnwdN : MlS := nm "nwd"

def pyB1 : List Stp := [⟨0, 32, 32, 20⟩, ⟨2, 52, 64, 0⟩, ⟨2, 84, 96, 0⟩, ⟨0, 116, 128, 256⟩,
  ⟨2, 372, 160, 0⟩, ⟨1, 404, 192, 0⟩, ⟨1, 412, 224, 0⟩, ⟨1, 420, 256, 0⟩, ⟨1, 428, 288, 0⟩]
def pyB2 : List Stp := [⟨2, 440, 352, 0⟩, ⟨2, 472, 384, 0⟩]
def pyB3 : List Stp := [⟨1, 512, 480, 0⟩, ⟨1, 520, 512, 0⟩]
def pyB4 : List Stp := [⟨1, 532, 576, 0⟩]

def txArg1 : ExpHOL 64 := .load .one (.op .add [lv txsN, .panop .mul [lv iN, cw 16]])
def txArg2 : ExpHOL 64 := .load .one (.op .add [lv txsN, .panop .mul [lv iN, cw 16], cw 8])

def txLoop : ProgHOL 64 :=
  .seq (callD (nm "htr_pbytes") [txArg1, txArg2, rootsE])
    (.assign .local iN (.op .add [lv iN, cw 1]))

def wdLoop : ProgHOL 64 :=
  .seq (callD (nm "htr_withdrawal") [.op .add [lv pwdN, .panop .mul [lv iN, cw 44]], rootsE])
    (.assign .local iN (.op .add [lv iN, cw 1]))

def allocRoots (n : MlS) : List (ExpHOL 64) := [.op .add [.panop .mul [lv n, cw 32], cw 32]]

def pyTail : ProgHOL 64 :=
  .seq (callD (nm "htr_pbytes") [ldo plN' 64, ldo plN' 72, offX chN 544])
    (stepsProg rawN pyB4
      (.seq (callD (nm "htr_pcontainer") [lv chN, cw 19, lv outN])
        (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0)))))

def pyWd : ProgHOL 64 :=
  .dec pwdN .one (ldo plN' 48)
    (.dec pnwdN .one (ldo plN' 56)
      (.seq (.call (some (some (.local, rootsN), none)) (nm "alloc") (allocRoots pnwdN))
        (.seq (.assign .local iN (cw 0))
          (.seq (.while (.cmp .less (lv iN) (lv pnwdN)) wdLoop)
            (.seq (callD (nm "htr_plist_chunks") [lv rootsN, lv pnwdN, lv pnwdN, offX chN 448])
              (.seq (callD (nm "heap_release") [lv m2N]) (stepsProg rawN pyB3 pyTail)))))))

def pyTx : ProgHOL 64 :=
  .dec txsN .one (ldo plN' 32)
    (.dec ntxN .one (ldo plN' 40)
      (.decCall m2N .one (nm "heap_mark") []
        (.decCall rootsN .one (nm "alloc") (allocRoots ntxN)
          (.dec iN .one (cw 0)
            (.seq (.while (.cmp .less (lv iN) (lv ntxN)) txLoop)
              (.seq (callD (nm "htr_plist_chunks") [lv rootsN, lv ntxN, lv ntxN, offX chN 416])
                (.seq (callD (nm "heap_release") [lv m2N]) pyWd)))))))

def pyBody : ProgHOL 64 :=
  .dec rawN .one (ldo plN' 0)
    (.decCall markN .one (nm "heap_mark") []
      (.decCall chN .one (nm "alloc") [.panop .mul [cw 19, cw 32]]
        (.seq (callD (nm "memcpy") [offX chN 0, .op .add [lv rawN, cw 0], cw 32])
          (stepsProg rawN pyB1
            (.seq (callD (nm "htr_bytes_list") [ldo plN' 16, ldo plN' 24, cw 1, offX chN 320])
              (stepsProg rawN pyB2 pyTx))))))

theorem code_htr_payload : guestCode (nm "htr_payload") =
    some ([(plN', .one), (outN, .one)], pyBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_htr_payload =
      (nm "htr_payload", [(plN', .one), (outN, .one)], pyBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 210) (by decide)) ⟨_, rfl⟩ h

/-- A loop writing one 32-byte root per index at `roots + i * 32`. -/
theorem hoareG_rootsLoop {a : AwE σ} (hK : AwOK a) {f : MlS} {args : List (ExpHOL 64)} {k : Nat}
    (hf : ASp a X f (fun vs _ => OutAt k a.h0 vs) (fun vs v _ => OutRes k vs v))
    (hk : ∀ (s : State σ) vs (W : BitVec 64), evs s args = some vs →
      ev s rootsE = some (.val (.word W)) → argW vs k = some W)
    (nn : MlS) (Base : Locals → Prop)
    (hB1 : ∀ m, Base m → Bd m rootsN a.h0 heapEnd ∧ ∃ N : BitVec 64, m.lookup nn = some (.val (.word N)))
    (hup : ∀ m v, Base m → Base (m.update (iN, v))) (hin : nn ≠ iN) {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a (fun m => Base m ∧ ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧
        I.toNat * 32 ≤ domTop + 64))
      (.while (.cmp .less (lv iN) (lv nn))
        (.seq (.call (some (none, none)) f args) (.assign .local iN (.op .add [lv iN, cw 1]))))
      (AQ a (fun m => Base m ∧ ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧
        I.toNat * 32 ≤ domTop + 64) Ret) := by
  have hHE : heapEnd = 2952790016 := rfl
  have hd : domTop = 1099511627776 := by decide
  refine hoareG_whileA hK (J := fun m => Base m ∧ ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧
        I.toNat * 32 ≤ domTop + 64) ?_ (fun s _ h _ => h)
  refine hoareG_loopPre (iN' := iN) (nN' := nn) ?_ ?_
  · refine hoareG_seqA (L2 := fun m => (Base m ∧ ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧
        I.toNat * 32 ≤ domTop + 64) ∧ ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧
        (I.toNat + 1) * 32 ≤ domTop + 64)
      (hoareG_callAs hK hf ?_ ?_) ?_
    · intro s hs hP vs hvs callee
      obtain ⟨⟨hb, I, hI, i2⟩, -⟩ := hP.2
      obtain ⟨⟨Rt, hRt, r1, r2⟩, -⟩ := hB1 _ hb
      obtain ⟨hev, hwn⟩ := ev_rootsE hRt hI i2 r2
      refine ⟨_, hk _ _ _ hvs hev, by rw [hwn]; omega, by rw [hwn]; omega⟩
    · intro s vs v st hL hvs hRet
      obtain ⟨⟨hb, I, hI, i2⟩, -⟩ := hL
      obtain ⟨⟨Rt, hRt, r1, r2⟩, -⟩ := hB1 _ hb
      obtain ⟨hev, hwn⟩ := ev_rootsE hRt hI i2 r2
      have hpost := hRet _ (hk _ _ _ hvs hev)
      rw [hwn] at hpost
      exact ⟨⟨hb, I, hI, i2⟩, I, hI, by omega⟩
    · refine hoareG_assignA hK fun s _ hL v hv => ?_
      obtain ⟨⟨hb, -⟩, I, hI, i2⟩ := hL
      rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv
      cases hv
      have hI2 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_addc (by omega)
      exact ⟨hup _ _ hb, _, lookup_update_self _ _ _, by rw [hI2]; exact i2⟩
  · intro m ⟨hb, I, hI, i2⟩
    obtain ⟨-, N, hN⟩ := hB1 _ hb
    exact ⟨I, N, hI, hN, by omega⟩

/-- The invariant carried through `htr_payload`. -/
def PYB (a : AwE σ) (Pw Rw O : BitVec 64) (m : Locals) : Prop :=
  m.lookup plN' = some (.val (.word Pw)) ∧ m.lookup rawN = some (.val (.word Rw)) ∧
    m.lookup outN = some (.val (.word O)) ∧ Bd m chN a.h0 heapEnd ∧ MkB a.p0.hp markN m

theorem pb_upd {a : AwE σ} {Pw Rw O : BitVec 64} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h1 : x ≠ plN') (h2 : x ≠ rawN) (h3 : x ≠ outN) (h4 : x ≠ chN) (h5 : x ≠ markN)
    (h : PYB a Pw Rw O m) : PYB a Pw Rw O (m.update (x, v)) :=
  ⟨by rw [lookup_update_ne _ _ h1]; exact h.1, by rw [lookup_update_ne _ _ h2]; exact h.2.1,
    by rw [lookup_update_ne _ _ h3]; exact h.2.2.1, bd_upd h4 h.2.2.2.1,
    mkb_upd h5 h.2.2.2.2⟩

theorem pb_fl {a : AwE σ} {Pw Rw O : BitVec 64} {m : Locals} (h : PYB a Pw Rw O m) :
    FL a rawN Rw O m := ⟨h.2.1, h.2.2.1, h.2.2.2.1, h.2.2.2.2⟩

theorem pb_ch {a : AwE σ} {Pw Rw O : BitVec 64} {s : State σ} (h : PYB a Pw Rw O s.locals) (oc : Nat)
    (hoc : oc < 2 ^ 20) : ∃ W : BitVec 64, ev s (offX chN oc) = some (.val (.word W)) ∧
      a.h0 ≤ W.toNat ∧ W.toNat ≤ 2 ^ 60 := by
  obtain ⟨Ch, hCh, c1, c2⟩ := h.2.2.2.1
  exact chOff hCh c1 c2 oc hoc

def TB (a : AwE σ) (Pw Rw O : BitVec 64) (nn : MlS) (m : Locals) : Prop :=
  PYB a Pw Rw O m ∧ MkB a.p0.hp m2N m ∧ Bd m rootsN a.h0 heapEnd ∧
    ∃ N : BitVec 64, m.lookup nn = some (.val (.word N))

theorem tb_upd {a : AwE σ} {Pw Rw O : BitVec 64} {nn : MlS} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h1 : x ≠ plN') (h2 : x ≠ rawN) (h3 : x ≠ outN) (h4 : x ≠ chN) (h5 : x ≠ markN)
    (h6 : x ≠ m2N) (h7 : x ≠ rootsN) (h8 : x ≠ nn)
    (h : TB a Pw Rw O nn m) : TB a Pw Rw O nn (m.update (x, v)) := by
  obtain ⟨hp, hm, hr, N, hN⟩ := h
  exact ⟨pb_upd h1 h2 h3 h4 h5 hp, mkb_upd h6 hm, bd_upd h7 hr, N, by rw [lookup_update_ne _ _ h8]; exact hN⟩

def WI (a : AwE σ) (Pw Rw O : BitVec 64) (nn : MlS) (m : Locals) : Prop :=
  TB a Pw Rw O nn m ∧ ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧ I.toNat * 32 ≤ domTop + 64

theorem wi_upd {a : AwE σ} {Pw Rw O : BitVec 64} {nn : MlS} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h1 : x ≠ plN') (h2 : x ≠ rawN) (h3 : x ≠ outN) (h4 : x ≠ chN) (h5 : x ≠ markN)
    (h6 : x ≠ m2N) (h7 : x ≠ rootsN) (h8 : x ≠ nn) (h9 : x ≠ iN)
    (h : WI a Pw Rw O nn m) : WI a Pw Rw O nn (m.update (x, v)) := by
  obtain ⟨hp, I, hI, i2⟩ := h
  exact ⟨tb_upd h1 h2 h3 h4 h5 h6 h7 h8 hp, I, by rw [lookup_update_ne _ _ h9]; exact hI, i2⟩

theorem stpOK_of {ss : List Stp} (h : ∀ st ∈ ss, st.oe < 2 ^ 20 ∧ st.oc < 2 ^ 20 ∧ st.kind ≤ 2) :
    ∀ st ∈ ss, StpOK st := h

theorem awSpec_htr_payload {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C)
    (hBV : AWSpec σ X C H (nm "htr_bytes_vector") [] (fun vs _ h0 => OutAt 2 h0 vs)
      (fun vs _ v _ => OutRes 2 vs v))
    (hU : AWSpec σ X C H (nm "htr_u64_at") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hBL : AWSpec σ X C H (nm "htr_bytes_list") [] (fun vs _ h0 => OutAt 3 h0 vs)
      (fun vs _ v _ => OutRes 3 vs v))
    (hPB : AWSpec σ X C H (nm "htr_pbytes") [] (fun vs _ h0 => OutAt 2 h0 vs)
      (fun vs _ v _ => OutRes 2 vs v))
    (hPl : AWSpec σ X C H (nm "htr_plist_chunks") [] (fun vs _ h0 => OutAt 3 h0 vs)
      (fun vs _ v _ => OutRes 3 vs v))
    (hWd : AWSpec σ X C H (nm "htr_withdrawal") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v))
    (hPc : AWSpec σ X C H (nm "htr_pcontainer") [] (fun vs _ h0 => PcPre h0 vs)
      (fun vs _ v _ => OutRes 2 vs v)) :
    AWSpec σ X C H (nm "htr_payload") [] (fun vs _ h0 => OutAt 1 h0 vs)
      (fun vs _ v _ => OutRes 1 vs v) := by
  refine awSpec_of_hoareG (PV := OutRes 1) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_htr_payload (by decide) hl
  obtain ⟨Pw, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O1, hO1, ho1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hHE : heapEnd = 2952790016 := rfl
  have hd : domTop = 1099511627776 := by decide
  have hbv := asp_of_aw hK hBV (fun g hg => absurd hg (by simp)) (fun vs s v t h => trivial)
  have hu := asp_of_aw hK hU (fun g hg => absurd hg (by simp)) (fun vs s v t h => trivial)
  have hbl := asp_of_aw hK hBL (fun g hg => absurd hg (by simp)) (fun vs s v t h => trivial)
  have hpb := asp_of_aw hK hPB (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have hpl := asp_of_aw hK hPl (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have hwd := asp_of_aw hK hWd (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  have hpc := asp_of_aw hK hPc (fun g hg => absurd hg (by simp)) (fun vs s v t h => h)
  let LL : Locals → Prop := fun m => m.lookup plN' = some (.val (.word Pw)) ∧
    m.lookup outN = some (.val (.word O))
  refine hoareG_conseq (P := APre a LL)
    (Q := AQ a (fun _ => True) (OutRes 1 [.val (.word Pw), .val (.word O)])) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact ⟨hla, hlb⟩⟩)
    (fun _ _ _ _ h => h)
  unfold pyBody
  -- raw
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s1 hs1 hL1 v1 hv1 hsh1
  obtain ⟨Rw, rfl⟩ := val_of_shapeEq_one hsh1
  let L1 : Locals → Prop := fun m => LL m ∧ m.lookup rawN = some (.val (.word Rw))
  refine hoareG_preA (L' := L1) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL1.2⟩, lookup_update_self _ _ _⟩)
  refine hoareG_decCallAs' hK (asp_mark hK hC)
    (Lk := fun m => L1 m ∧ MkB p.hp markN m)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2⟩,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2⟩,
      w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s2
  refine hoareG_decCallAs' hK (asp_alloc hK hC)
    (Lk := PYB a Pw Rw O) (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_mul2 (ev_cw _ 19) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1.2,
      bd_new _ _ _ hq1 (by omega), mkb_upd (by decide) hL.2⟩
  intro s3
  -- memcpy(ch, raw + 0, 32)
  refine hoareG_seqA (L2 := PYB a Pw Rw O) (hoareG_callOK hK (asp_memcpy hK hC hA hT) ?_) ?_
  · intro s hL vs hvs
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    obtain ⟨W, hW, w1, w2⟩ := pb_ch hL 0 (by decide)
    rw [hW] at e1
    cases e1
    rw [ev_cw] at e3
    cases e3
    exact ⟨W, _, rfl, rfl, w1, by omega⟩
  refine hoareG_steps rawN hK hC hA hT (L := PYB a Pw Rw O) (fun _ h => pb_fl h) hbv hu pyB1
    (stpOK_of (by simp [pyB1])) ?_
  refine hoareG_seqA (L2 := PYB a Pw Rw O) (hoareG_callOK hK hbl ?_) ?_
  · intro s hL vs hvs
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    obtain ⟨W, hW, w1, w2⟩ := pb_ch hL 320 (by decide)
    rw [hW] at e4
    cases e4
    exact ⟨W, rfl, w1, w2⟩
  refine hoareG_steps rawN hK hC hA hT (L := PYB a Pw Rw O) (fun _ h => pb_fl h) hbv hu pyB2
    (stpOK_of (by simp [pyB2])) ?_
  unfold pyTx
  -- txs, ntx
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s4 hs4 hL4 v4 hv4 hsh4
  obtain ⟨Tx, rfl⟩ := val_of_shapeEq_one hsh4
  refine hoareG_preA (L' := fun m => PYB a Pw Rw O m) ?_ (fun m hm => by
    subst hm
    exact pb_upd (by decide) (by decide) (by decide) (by decide) (by decide) hL4)
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s5 hs5 hL5 v5 hv5 hsh5
  obtain ⟨Nt, rfl⟩ := val_of_shapeEq_one hsh5
  refine hoareG_preA (L' := fun m => PYB a Pw Rw O m ∧ m.lookup ntxN = some (.val (.word Nt))) ?_
    (fun m hm => by
      subst hm
      exact ⟨pb_upd (by decide) (by decide) (by decide) (by decide) (by decide) hL5,
        lookup_update_self _ _ _⟩)
  refine hoareG_decCallAs' hK (asp_mark hK hC)
    (Lk := fun m => (PYB a Pw Rw O m ∧ m.lookup ntxN = some (.val (.word Nt))) ∧ MkB p.hp m2N m)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨⟨pb_upd (by decide) (by decide) (by decide) (by decide) (by decide) hL.1,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2⟩,
      w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s6
  refine hoareG_decCallAs' hK (asp_alloc hK hC)
    (Lk := TB a Pw Rw O ntxN) (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    have hN := hP.2.1.2
    unfold allocRoots at hvs
    rw [evs_cons (ev_add2 (ev_mul2 (ev_lw hN) (ev_cw _ 32)) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨pb_upd (by decide) (by decide) (by decide) (by decide) (by decide) hL.1.1,
      mkb_upd (by decide) hL.2, bd_new _ _ _ hq1 (by omega), Nt,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2⟩
  intro s7
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s8 hs8 hL8 v8 hv8 hsh8
  rw [ev_cw] at hv8
  cases hv8
  let JJ : Locals → Prop := fun m => TB a Pw Rw O ntxN m ∧ ∃ I : BitVec 64,
    m.lookup iN = some (.val (.word I)) ∧ I.toNat * 32 ≤ domTop + 64
  refine hoareG_preA (L' := JJ) ?_ (fun m hm => by
    subst hm
    exact ⟨tb_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) hL8, _, lookup_update_self _ _ _, by simp⟩)
  refine hoareG_seqA (L2 := JJ)
    (hoareG_rootsLoop (f := nm "htr_pbytes") (k := 2) (nn := ntxN) hK hpb ?_ (TB a Pw Rw O ntxN) ?_ ?_
      (by decide)) ?_
  · intro s vs W hvs hev
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [hev] at e3
    cases e3
    rfl
  · intro m hm
    exact ⟨hm.2.2.1, hm.2.2.2⟩
  · intro m v hm
    exact tb_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) hm
  -- plist_chunks, release m2
  refine hoareG_seqA (L2 := JJ) (hoareG_callOK hK hpl ?_) ?_
  · intro s hL vs hvs
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    obtain ⟨W, hW, w1, w2⟩ := pb_ch hL.1.1 416 (by decide)
    rw [hW] at e4
    cases e4
    exact ⟨W, rfl, w1, w2⟩
  refine hoareG_seqA (L2 := JJ) (hoareG_callOK hK (asp_release hK hC) ?_) ?_
  · intro s hL vs hvs
    obtain ⟨w, hw, h1, h2, h3⟩ := hL.1.2.1
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  unfold pyWd
  -- wd, nwd
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s9 hs9 hL9 v9 hv9 hsh9
  obtain ⟨Wd, rfl⟩ := val_of_shapeEq_one hsh9
  refine hoareG_preA (L' := WI a Pw Rw O ntxN) ?_ (fun m hm => by
    subst hm
    exact wi_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) hL9)
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s10 hs10 hL10 v10 hv10 hsh10
  obtain ⟨Nw, rfl⟩ := val_of_shapeEq_one hsh10
  refine hoareG_preA (L' := fun m => WI a Pw Rw O ntxN m ∧ m.lookup pnwdN = some (.val (.word Nw)))
    ?_ (fun m hm => by
      subst hm
      exact ⟨wi_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide) (by decide) hL10, lookup_update_self _ _ _⟩)
  -- roots = alloc
  refine hoareG_seqA (L2 := WI a Pw Rw O pnwdN)
    (hoareG_callAsA hK (asp_alloc hK hC) ?_ ?_) ?_
  · intro s hs hP vs hvs callee
    have hN := hP.2.2
    unfold allocRoots at hvs
    rw [evs_cons (ev_add2 (ev_mul2 (ev_lw hN) (ev_cw _ 32)) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    obtain ⟨⟨hpb, hm, hr, N0, hN0⟩, I, hI, i2⟩ := hL.1
    exact ⟨⟨pb_upd (by decide) (by decide) (by decide) (by decide) (by decide) hpb,
      mkb_upd (by decide) hm, bd_new _ _ _ hq1 (by omega), Nw,
      by rw [lookup_update_ne _ _ (by decide)]; exact hL.2⟩, I,
      by rw [lookup_update_ne _ _ (by decide)]; exact hI, i2⟩
  -- i := 0
  refine hoareG_seqA (L2 := WI a Pw Rw O pnwdN) (hoareG_assignA hK fun s _ hL v hv => ?_) ?_
  · rw [ev_cw] at hv
    cases hv
    exact ⟨tb_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) hL.1, _, lookup_update_self _ _ _, by simp⟩
  refine hoareG_seqA (L2 := WI a Pw Rw O pnwdN)
    (hoareG_rootsLoop (f := nm "htr_withdrawal") (k := 1) (nn := pnwdN) hK hwd ?_
      (TB a Pw Rw O pnwdN) ?_ ?_ (by decide)) ?_
  · intro s vs W hvs hev
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    rw [hev] at e2
    cases e2
    rfl
  · intro m hm
    exact ⟨hm.2.2.1, hm.2.2.2⟩
  · intro m v hm
    exact tb_upd (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) hm
  refine hoareG_seqA (L2 := WI a Pw Rw O pnwdN) (hoareG_callOK hK hpl ?_) ?_
  · intro s hL vs hvs
    obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
    obtain ⟨W, hW, w1, w2⟩ := pb_ch hL.1.1 448 (by decide)
    rw [hW] at e4
    cases e4
    exact ⟨W, rfl, w1, w2⟩
  refine hoareG_seqA (L2 := WI a Pw Rw O pnwdN) (hoareG_callOK hK (asp_release hK hC) ?_) ?_
  · intro s hL vs hvs
    obtain ⟨w, hw, h1, h2, h3⟩ := hL.1.2.1
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  refine hoareG_steps rawN hK hC hA hT (L := WI a Pw Rw O pnwdN) (fun _ h => pb_fl h.1.1) hbv hu pyB3
    (stpOK_of (by simp [pyB3])) ?_
  unfold pyTail
  refine hoareG_seqA (L2 := WI a Pw Rw O pnwdN) (hoareG_callOK hK hpb ?_) ?_
  · intro s hL vs hvs
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    obtain ⟨W, hW, w1, w2⟩ := pb_ch hL.1.1 544 (by decide)
    rw [hW] at e3
    cases e3
    exact ⟨W, rfl, w1, w2⟩
  refine hoareG_steps rawN hK hC hA hT (L := WI a Pw Rw O pnwdN) (fun _ h => pb_fl h.1.1) hbv hu pyB4
    (stpOK_of (by simp [pyB4])) ?_
  refine hoareG_seqA (L2 := fun m => WI a Pw Rw O pnwdN m ∧ O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK hpc ?_ ?_) ?_
  · intro s hs hP vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hP.2.1.1.2.2.1] at e3
    cases e3
    rw [ev_cw] at e2
    cases e2
    exact ⟨⟨O, rfl, ho1, ho2⟩, _, rfl, by simp⟩
  · intro s vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hL.1.1.2.2.1] at e3
    cases e3
    exact ⟨hL, hRet O rfl⟩
  refine hoareG_seqA (L2 := fun m => O.toNat + 32 ≤ domTop + 64)
    (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ hL _ _ => hL.2)) ?_
  · intro s hs hP vs hvs callee
    obtain ⟨w, hw, h1, h2, h3⟩ := hP.2.1.1.1.2.2.2.2
    rw [evs_cons (ev_lw hw) evs_nil] at hvs
    cases hvs
    exact ⟨w, rfl, h1, h2, h3⟩
  · exact hoareG_returnA hK (fun s hs hL v hv O' hO' => by
      cases hO'
      exact hL)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_htr_payload
