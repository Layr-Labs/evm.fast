import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify696
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body712_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "bls_fp_shr1" [Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body712_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body712_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x"), Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) body712_0 body712_1

def body712_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 1#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 63#64)],
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 1#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 63#64)],
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 1#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 63#64)],
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 1#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 63#64)],
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 1#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 63#64)],
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 1#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.rField 6 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
            (Flapjack.Exp.const 63#64)]])

def body712_4 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one]) ("bls_fp_add_raw") ([Flapjack.Exp.var Flapjack.VarKind.local "x",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13402431016077863595#64, Flapjack.Exp.const 2210141511517208575#64,
      Flapjack.Exp.const 7435674573564081700#64, Flapjack.Exp.const 7239337960414712511#64,
      Flapjack.Exp.const 5412103778470702295#64, Flapjack.Exp.const 1873798617647539866#64]]) body712_3

def body712_5 : Prog (BitVec 64) :=
.seq body712_2 body712_4

def originalData712 : Decl (BitVec 64) :=
.function { name := "bls_fp_half_can", inline := false, exported := false, params := [("x",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body712_5, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) }
def simplifiedData712 : Decl (BitVec 64) :=
.function { name := "bls_fp_half_can", inline := false, exported := false, params := [("x",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body712_5, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) }
def original712 := Pancake.PanLang.declToHOL originalData712
def simplified712 := Pancake.PanLang.declToHOL simplifiedData712
end InitECandidate.Proofs.FrontendStages.Declarations
