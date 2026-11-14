import InitECandidate.Solver.MemSafe.WaveHelpers.BitLen
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.WaveHelpers
namespace InitECandidate.Solver.MemSafe.ModexpCost.TopBit
variable {σ : Type} {X : Ctx 64}
 theorem expression_bound (N I B : BitVec 64) (hN : N.toNat ≤ 1024)
 (hI : I.toNat < N.toNat) (hB : B.toNat ≤ 64) :
 let T := ((N-1-I)*8+B-1 : BitVec 64)
 T = -1 ∨ T.toNat ≤ 8256 := by
  dsimp only
  have hone : (1 : BitVec 64).toNat = 1 := by decide
  have hN1 : (1 : BitVec 64) ≤ N := by
   rw [BitVec.le_def]
   change 1 ≤ N.toNat
   omega
  have hnsub : (N-1).toNat = N.toNat-1 := by
   rw [BitVec.toNat_sub_of_le hN1,hone]
  have hIle : I ≤ N-1 := by
   rw [BitVec.le_def,hnsub]
   omega
  have hsub : (N - 1 - I).toNat ≤ 1024 := by
   rw [BitVec.toNat_sub_of_le hIle,hnsub]
   omega
  have hmul : ((N-1-I)*8 : BitVec 64).toNat ≤ 8192 := by
   rw [BitVec.toNat_mul]
   change ((N-1-I).toNat * 8) % 18446744073709551616 ≤ 8192
   have ht : (N-1-I).toNat * 8 ≤ 8192 := by omega
   rw [Nat.mod_eq_of_lt (by omega)]
   exact ht
  let A := ((N-1-I)*8+B : BitVec 64)
  have hA : A.toNat ≤ 8256 := by
   simp only [A,BitVec.toNat_add]
   omega
  by_cases hz : A.toNat = 0
  · left
    have he : A = 0 := BitVec.eq_of_toNat_eq hz
    change A-1 = -1
    rw [he]
    rfl
  · right
    change (A-1).toNat ≤ 8256
    have hA1 : (1 : BitVec 64) ≤ A := by
     rw [BitVec.le_def]
     change 1 ≤ A.toNat
     omega
    rw [BitVec.toNat_sub_of_le hA1,hone]
    omega
def resultExp : ExpHOL 64 :=
 .op .sub [.op .add [.panop .mul [.op .sub [.op .sub [lv (nm "nbytes"),cw 1],lv (nm "i")],cw 8],lv (nm "bl")],cw 1]
def branch : ProgHOL 64 :=
 .ite (.cmp .notEqual (lv (nm "b")) (cw 0))
  (.decCall (nm "bl") .one (nm "bit_length64") [lv (nm "b")] (.return resultExp)) .skip
def step : ProgHOL 64 :=
 .dec (nm "b") .one (.loadByte (.op .add [lv (nm "p"),lv (nm "i")]))
  (.seq branch (.assign .local (nm "i") (.op .add [lv (nm "i"),cw 1])))
def condition : ExpHOL 64 := .cmp .lower (lv (nm "i")) (lv (nm "nbytes"))
def body : ProgHOL 64 :=
 .dec (nm "i") .one (cw 0)
  (.seq (.while condition step) (.return (.op .sub [cw 0,cw 1])))
theorem entry : fnEntry Guest.Software.guestFn_be_top_bit =
 (nm "be_top_bit",[(nm "p",.one),(nm "nbytes",.one)],body,.one) := by
 conv => lhs; cbv
 conv => rhs; cbv
theorem code : guestCode (nm "be_top_bit") = some ([(nm "p",.one),(nm "nbytes",.one)],body,.one) :=
 code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 629) (by decide)) ⟨_,rfl⟩ entry

def BR (v : ValueHOL 64) : Prop := ∃ w : BitVec 64, v = .val (.word w) ∧ (w = -1 ∨ w.toNat ≤ 8256)
def Ret (r : Option (PanSemResultExact 64)) : Prop := ∀ v, r = some (.returned v) → BR v
def BI (N : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Prop :=
 s.locals.lookup (nm "nbytes") = some (.val (.word N)) ∧
 ∃ I : BitVec 64, s.locals.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ N.toNat
def BS (N : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Prop :=
 s.locals.lookup (nm "nbytes") = some (.val (.word N)) ∧
 ∃ I : BitVec 64, s.locals.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat < N.toNat

theorem branch_ret (hC : X.code.lookup = guestCode) (N : BitVec 64) (hN : N.toNat ≤ 1024) :
 Hoare σ X (BS N) branch (fun r t => (r = none ∧ BS N t) ∨ ∃ v, r = some (.returned v) ∧ BR v) := by
 unfold branch
 refine hoare_ite ?_ ?_
 · refine hoare_pre (hoare_decCallS (funSpec_bit_length64_le hC) ?_) (fun s _ h => h.1)
   intro s hs hp vs hvs callee v st hR hst hshape
   obtain ⟨B,rfl,hB⟩ := hR _ rfl
   obtain ⟨hn,I,hi,hI⟩ := hp
   refine hoare_return fun t ht hte v hv => ?_
   subst t
   have hn' : (setVarHOLFinite (nm "bl") (.val (.word B)) {st with locals := s.locals}).locals.lookup (nm "nbytes") = some (.val (.word N)) := by
    rw [lk_set_ne _ _ (by decide)]; exact hn
   have hi' : (setVarHOLFinite (nm "bl") (.val (.word B)) {st with locals := s.locals}).locals.lookup (nm "i") = some (.val (.word I)) := by
    rw [lk_set_ne _ _ (by decide)]; exact hi
   have hb' : (setVarHOLFinite (nm "bl") (.val (.word B)) {st with locals := s.locals}).locals.lookup (nm "bl") = some (.val (.word B)) := lk_set_self _ _ _
   unfold resultExp at hv
   rw [ev_sub2 (ev_add2 (ev_mul2 (ev_sub2 (ev_sub2 (ev_lw hn') (ev_cw _ 1)) (ev_lw hi')) (ev_cw _ 8)) (ev_lw hb')) (ev_cw _ 1)] at hv
   cases hv
   exact Or.inr ⟨_,rfl,_,rfl,expression_bound N I B hN hI hB⟩
 · refine hoare_skip fun s hs hp => Or.inl ⟨rfl,hp.1⟩


def Post (N : BitVec 64) (r : Option (PanSemResultExact 64)) (t : PanSemStateFiniteExact 64 σ) : Prop :=
 (r = none ∧ BI N t) ∨ ∃ v, r = some (.returned v) ∧ BR v

theorem step_post (hC : X.code.lookup = guestCode) (N : BitVec 64) (hN : N.toNat ≤ 1024) :
 Hoare σ X (BS N) step (Post N) := by
 unfold step
 refine hoare_dec fun s hs hp v hv hshape => ?_
 refine hoare_post (Q := Post N) ?_ ?_
 · refine hoare_pre (P := BS N) ?_ ?_
   · refine hoare_seq (branch_ret hC N hN) ?_ ?_
     · intro r t ht hr htracked hpost
       rcases hpost with ⟨h,_⟩ | ⟨v,h,hb⟩
       · exact False.elim (hr h)
       · exact Or.inr ⟨v,h,hb⟩
     · refine hoare_assign fun t ht hp w hw hvalid => ?_
       have hbs : BS N t := by
         rcases hp with ⟨_,h⟩ | ⟨v,h,_⟩
         · exact h
         · cases h
       obtain ⟨hn,I,hi,hI⟩ := hbs
       rw [ev_add2 (ev_lw hi) (ev_cw _ 1)] at hw
       cases hw
       refine Or.inl ⟨rfl,?_,I+1,lk_set_self _ _ _,?_⟩
       · rw [lk_set_ne _ _ (by decide)]; exact hn
       · rw [BitVec.toNat_add]
         change (I.toNat+1)%18446744073709551616 ≤ N.toNat
         omega
   · intro t ht he
     subst t
     obtain ⟨hn,I,hi,hI⟩ := hp
     refine ⟨?_,I,?_,hI⟩
     · rw [lk_set_ne _ _ (by decide)]; exact hn
     · rw [lk_set_ne _ _ (by decide)]; exact hi
 · intro r t ht htracked hp
   rcases hp with ⟨hr,hn,I,hi,hI⟩ | ⟨v,hr,hb⟩
   · refine Or.inl ⟨hr,?_,I,?_,hI⟩
     · rw [lookup_resVarEq_ne _ _ (by decide)]; exact hn
     · rw [lookup_resVarEq_ne _ _ (by decide)]; exact hi
   · exact Or.inr ⟨v,hr,hb⟩

theorem body_ret (hC : X.code.lookup = guestCode) (N : BitVec 64) (hN : N.toNat ≤ 1024) :
 Hoare σ X (fun s => s.locals.lookup (nm "nbytes") = some (.val (.word N))) body
  (fun r _ => Ret r) := by
 unfold body
 refine hoare_dec fun s hs hp v hv hsh => ?_
 rw [ev_cw] at hv
 cases hv
 refine hoare_post (Q := fun r _ => Ret r) ?_ (fun _ _ _ _ h => h)
 refine hoare_seq (R := Post N) ?_ ?_ ?_
 · refine hoare_pre (P := BI N) ?_ ?_
   · refine hoare_while (fun _ h => h) ?_ (fun t ht hI hc => Or.inl ⟨rfl,hI⟩)
     refine hoare_post (hoare_pre (step_post hC N hN) ?_) ?_
     · intro t ht ⟨hbi,hc⟩
       obtain ⟨hn,I,hi,hI⟩ := hbi
       obtain ⟨w,hw,hw0⟩ := hc
       have hlt := lower_true (cmp_val_true hw hw0 (ev_lw hi) (ev_lw hn))
       exact ⟨hn,I,hi,hlt⟩
     · intro r t ht htracked hp
       rcases hp with ⟨hr,hI⟩ | ⟨v,hr,hb⟩
       · subst r
         exact ⟨fun _ => hI,by simp,by simp,by simp⟩
       · subst r
         exact ⟨by simp,by simp,by simp,fun w hw => Or.inr ⟨v,rfl,hb⟩⟩
   · intro t ht he
     subst t
     exact ⟨by rw [lk_set_ne _ _ (by decide)]; exact hp,0,lk_set_self _ _ _,by simp⟩
 · intro r t ht hr htracked hp
   rcases hp with ⟨h,_⟩ | ⟨v,h,hb⟩
   · exact False.elim (hr h)
   · intro w hw
     have hv : w = v := by rw [h] at hw; cases hw; rfl
     simpa [hv] using hb
 · refine hoare_return fun t ht hp v hv => ?_
   rw [ev_sub2 (ev_cw _ 0) (ev_cw _ 1)] at hv
   cases hv
   intro w hw
   cases hw
   exact ⟨-1,rfl,Or.inl rfl⟩
theorem funSpec_be_top_bit (hC : X.code.lookup = guestCode) :
 FunSpec σ X (nm "be_top_bit") (fun vs _ r _ =>
  ∀ (A : ValueHOL 64) (N : BitVec 64), vs = [A,.val (.word N)] → N.toNat ≤ 1024 →
   ∀ v, r = .returned v → BR v) := by
 intro vs bd callee rs hl s0 hs0 hloc r hr A N hvs hN v hv
 subst r
 rw [hC] at hl
 obtain ⟨rfl, -, AP, AN, rfl, hAP, hAN, hp, hn⟩ := lookupCode_two code (by decide) hl
 have he : AN = .val (.word N) := by
  have h := List.cons.inj hvs
  have h' := List.cons.inj h.2
  exact h'.1
 subst AN
 have hn' : s0.locals.lookup (nm "nbytes") = some (.val (.word N)) := by
  rw [hloc]
  exact hn
 have hh := body_ret hC N hN s0 hs0 hn' (by rw [hr]; trivial)
 rw [hr] at hh
 exact hh _ rfl
#print axioms funSpec_be_top_bit
#print axioms step_post
#print axioms body_ret
end InitECandidate.Solver.MemSafe.ModexpCost.TopBit
