import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data159
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate142
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody159_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x"))
            (Flapjack.Exp.const 1#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x"))
            (Flapjack.Exp.const 63#64)],
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x"))
            (Flapjack.Exp.const 1#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "x"))
            (Flapjack.Exp.const 63#64)],
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "x"))
            (Flapjack.Exp.const 1#64),
          Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "x"))
            (Flapjack.Exp.const 63#64)],
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "x"))
        (Flapjack.Exp.const 1#64)])

def globalBody159_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody159_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x"), Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) globalBody159_0 globalBody159_1

def globalBody159_3 : Prog (BitVec 64) :=
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
            (Flapjack.Exp.const 63#64)]])

def globalBody159_4 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "m"]) globalBody159_3

def globalBody159_5 : Prog (BitVec 64) :=
.seq globalBody159_2 globalBody159_4

def globalData159 : Decl (BitVec 64) :=
.function { name := "mod_half", inline := false, exported := false, params := [("x", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("m", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody159_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput159 := Pancake.PanLang.declToHOL globalData159
end InitECandidate.Proofs.FrontendStages.Declarations
