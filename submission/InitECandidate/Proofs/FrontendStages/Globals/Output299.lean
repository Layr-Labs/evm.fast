import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data299
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate282
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody299_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.var Flapjack.VarKind.local "envcode")

def globalBody299_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody299_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 8#64)
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f"))) globalBody299_0 globalBody299_1

def globalBody299_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "v"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 8#64),
      Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "f"),
            Flapjack.Exp.var Flapjack.VarKind.local "j"])])

def globalBody299_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody299_5 : Prog (BitVec 64) :=
.seq globalBody299_3 globalBody299_4

def globalBody299_6 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "f"))) globalBody299_5

def globalBody299_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "v")

def globalBody299_8 : Prog (BitVec 64) :=
.seq globalBody299_6 globalBody299_7

def globalBody299_9 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody299_8

def globalBody299_10 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody299_9

def globalBody299_11 : Prog (BitVec 64) :=
.seq globalBody299_2 globalBody299_10

def globalBody299_12 : Prog (BitVec 64) :=
.decCall ("f") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_scalar_item") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "i",
  Flapjack.Exp.var Flapjack.VarKind.local "maxb"]) globalBody299_11

def globalData299 : Decl (BitVec 64) :=
.function { name := "tx_scalar_word", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("i", Flapjack.Shape.one), ("maxb", Flapjack.Shape.one), ("envcode", Flapjack.Shape.one)], body := globalBody299_12, returnShape := (Flapjack.Shape.one) }
def globalOutput299 := Pancake.PanLang.declToHOL globalData299
end InitECandidate.Proofs.FrontendStages.Declarations
