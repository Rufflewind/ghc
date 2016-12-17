module ErrUtils where

import FastString (FastString)
import Outputable (SDoc)
import SrcLoc (SrcSpan)

data Severity
  = SevOutput
  | SevFatal
  | SevInteractive
  | SevDump
  | SevInfo
  | SevWarning
  | SevError


type MsgDoc = SDoc

mkLocMessage :: Severity -> SrcSpan -> MsgDoc -> MsgDoc
mkLocMessageAnn :: Maybe String -> Severity -> SrcSpan -> MsgDoc -> MsgDoc
getCaretDiagnostic :: (FastString -> Int -> IO (Maybe String))
                   -> Severity
                   -> SrcSpan
                   -> IO MsgDoc
