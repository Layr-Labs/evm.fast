import InitECandidate.Solver.MemSafe.ArrayCost.ScaledCallReads
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.ArrayCost.Read InitECandidate.Solver.MemSafe.PairCost.Read
namespace InitECandidate.Solver.MemSafe.DivCost.Read
variable {σ : Type}
theorem list_tail_eval {s : PanSemStateFiniteExact 64 σ} {inst : DecidablePred s.toExact.memaddrs}
 {e : ExpHOL 64} {es : List (ExpHOL 64)} {vs : List (ValueHOL 64)}
 (h : @evalListHOLExact 64 σ _ s.toExact inst (e::es)=some vs) :
 ∃ ws, @evalListHOLExact 64 σ _ s.toExact inst es=some ws := by
 simp only [evalListHOLExact] at h
 split at h
 · rename_i v ws hv hws
   exact ⟨ws,hws⟩
 · simp at h

theorem op_args {s : PanSemStateFiniteExact 64 σ} {inst : DecidablePred s.toExact.memaddrs}
 {op : BinOp} {a b : ExpHOL 64} {es : List (ExpHOL 64)} {v : ValueHOL 64}
 (h : @evalHOLExact 64 σ _ s.toExact inst (.op op (a::b::es))=some v) :
 ∃ va vb, @evalHOLExact 64 σ _ s.toExact inst a=some va ∧
  @evalHOLExact 64 σ _ s.toExact inst b=some vb := by
 rw [evalHOLExact] at h
 cases he : @evalListHOLExact 64 σ _ s.toExact inst (a::b::es) with
 | none => simp [he] at h
 | some vs =>
  obtain ⟨va,ha⟩ := list_first_eval he
  obtain ⟨ws,hw⟩ := list_tail_eval he
  obtain ⟨vb,hb⟩ := list_first_eval hw
  exact ⟨va,vb,ha,hb⟩

theorem panop_args {s : PanSemStateFiniteExact 64 σ} {inst : DecidablePred s.toExact.memaddrs}
 {op : PanOp} {a b : ExpHOL 64} {es : List (ExpHOL 64)} {v : ValueHOL 64}
 (h : @evalHOLExact 64 σ _ s.toExact inst (.panop op (a::b::es))=some v) :
 ∃ va vb, @evalHOLExact 64 σ _ s.toExact inst a=some va ∧
  @evalHOLExact 64 σ _ s.toExact inst b=some vb := by
 rw [evalHOLExact] at h
 cases he : @evalListHOLExact 64 σ _ s.toExact inst (a::b::es) with
 | none => simp [he] at h
 | some vs =>
  obtain ⟨va,ha⟩ := list_first_eval he
  obtain ⟨ws,hw⟩ := list_tail_eval he
  obtain ⟨vb,hb⟩ := list_first_eval hw
  exact ⟨va,vb,ha,hb⟩

def findFuel : Nat → ExpHOL 64 → Option (ExpHOL 64 × MlS × BitVec 64)
 | 0,_ => none
 | n+1,.load .one (.op .add [B,.panop .mul [.var .local i,.const k]]) =>
   if isBase i B then some (B,i,k) else none
 | n+1,.loadByte (.op .add [B,.panop .mul [.var .local i,.const k]]) =>
   if isBase i B then some (B,i,k) else none
 | n+1,.op _ [a,b,_] => (findFuel n a).orElse (fun _ => findFuel n b)
 | n+1,.op _ [a,b] => (findFuel n a).orElse (fun _ => findFuel n b)
 | n+1,.panop _ [a,b] => (findFuel n a).orElse (fun _ => findFuel n b)
 | _,_ => none

theorem fuel_hit (fuel : Nat) : ∀ e B i k, findFuel fuel e=some (B,i,k) →
 ∀ (s : PanSemStateFiniteExact 64 σ) (inst : DecidablePred s.toExact.memaddrs) (v : ValueHOL 64),
 @evalHOLExact 64 σ _ s.toExact inst e=some v →
 ∃ w, scaledAddr B i k s=some w ∧ Hit s.memaddrs w := by
 induction fuel with
 | zero => intro e B i k h; simp [findFuel] at h
 | succ n ih =>
  intro e B i k h s inst v hv
  unfold findFuel at h
  split at h
  · cases h
  · split at h
    · rename_i hB
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      obtain ⟨w,hw,hhit⟩ := eval_load_one_hit hv
      exact ⟨w,eval_scaledAddr inst hB hw,hhit⟩
    · cases h
  · split at h
    · rename_i hB
      simp only [Option.some.injEq,Prod.mk.injEq] at h
      obtain ⟨rfl,rfl,rfl⟩ := h
      obtain ⟨w,hw,hhit⟩ := eval_load_byte_hit hv
      exact ⟨w,eval_scaledAddr inst hB hw,hhit⟩
    · cases h
  · rename_i n0 op a b third hn
    have hnn : n0 = n := Nat.succ.inj hn.symm
    subst n0
    obtain ⟨va,vb,ha,hb⟩ := op_args hv
    cases hf : findFuel n a with
    | none =>
      have hh : findFuel n b=some (B,i,k) := by simpa [hf] using h
      exact ih b B i k hh s inst vb hb
    | some t =>
      have ht : t=(B,i,k) := by simpa [hf] using h
      subst t
      exact ih a B i k hf s inst va ha
  · rename_i n0 op a b hn
    have hnn : n0 = n := Nat.succ.inj hn.symm
    subst n0
    obtain ⟨va,vb,ha,hb⟩ := op_args hv
    cases hf : findFuel n a with
    | none =>
      have hh : findFuel n b=some (B,i,k) := by simpa [hf] using h
      exact ih b B i k hh s inst vb hb
    | some t =>
      have ht : t=(B,i,k) := by simpa [hf] using h
      subst t
      exact ih a B i k hf s inst va ha
  · rename_i n0 op a b hn
    have hnn : n0 = n := Nat.succ.inj hn.symm
    subst n0
    obtain ⟨va,vb,ha,hb⟩ := panop_args hv
    cases hf : findFuel n a with
    | none =>
      have hh : findFuel n b=some (B,i,k) := by simpa [hf] using h
      exact ih b B i k hh s inst vb hb
    | some t =>
      have ht : t=(B,i,k) := by simpa [hf] using h
      subst t
      exact ih a B i k hf s inst va ha
  · cases h

def find (e : ExpHOL 64) := findFuel 16 e
theorem find_hit {e : ExpHOL 64} {B : ExpHOL 64} {i : MlS} {k : BitVec 64}
 (h : find e=some (B,i,k)) (s : PanSemStateFiniteExact 64 σ)
 (inst : DecidablePred s.toExact.memaddrs) (v : ValueHOL 64)
 (hv : @evalHOLExact 64 σ _ s.toExact inst e=some v) :
 ∃ w, scaledAddr B i k s=some w ∧ Hit s.memaddrs w := fuel_hit 16 e B i k h s inst v hv

def access : ProgHOL 64 → Option (ExpHOL 64 × MlS × BitVec 64)
 | .dec _ _ e _ => find e
 | _ => none
theorem access_hit {p : ProgHOL 64} {B : ExpHOL 64} {i : MlS} {k : BitVec 64}
 (h : access p=some (B,i,k)) {s : PanSemStateFiniteExact 64 σ} (hc : Completes s p) :
 ∃ w, scaledAddr B i k s=some w ∧ Hit s.memaddrs w := by
 unfold access at h
 split at h
 · obtain ⟨inst,v,hv⟩ := decl_source_eval hc
   exact find_hit h s inst v hv
 · cases h
#print axioms find_hit
#print axioms access_hit
end InitECandidate.Solver.MemSafe.DivCost.Read
